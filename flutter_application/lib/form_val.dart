import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'applications/theme_service.dart';

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, process the data or perform the desired action
      print("Form is valid");
      print("Name: $_name");
      print("Email: $_email");
    } else {
      // Form is invalid, show error messages
      print("Form is invalid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  here we have to keep an eye on if you not listening or consume the state and you perform actions like toggle theme here.
// We have to say that that means we have to write listen all it's here. So we say, Hey provider, I will not listen here on the state.
// I want to do something like toggle the theme. So we are listening on the values and not listening, but executing the functions that manipulating the values.
          Provider.of<ThemeService>(context, listen: false).toggleTheme();
          Navigator.pushNamed(context, '/CustomContainer');
        },
        child: Icon(Icons.calculate_rounded),
      ),
      appBar: AppBar(
        title: Text('Form Validation'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
