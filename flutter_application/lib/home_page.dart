import 'package:flutter/material.dart';
import 'package:flutter_application/applications/theme_service.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String userInput = "";
  String result = "0";

  List<String> buttonList = [
    'AC',
    '(',
    ')',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    '-',
    'C',
    '0',
    '.',
    '='
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //  here we have to keep an eye on if you not listening or consume the state and you perform actions like toggle theme here.
// We have to say that that means we have to write listen all it's here. So we say, Hey provider, I will not listen here on the state.
// I want to do something like toggle the theme. So we are listening on the values and not listening, but executing the functions that manipulating the values.
          Provider.of<ThemeService>(context, listen: false).toggleTheme();
          Navigator.pushNamed(context, '/CalculatorScreen');
        },
        child: Icon(Icons.calculate_rounded),
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child: Text(
                  userInput,
                  style: TextStyle(fontSize: 32, color: Colors.deepPurple),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: TextStyle(
                      fontSize: 48,
                      color: Colors.purple,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
          ),
          Divider(
            color: Colors.deepPurple,
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            child: GridView.builder(
                itemCount: buttonList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 12,
                    mainAxisSpacing: 12),
                itemBuilder: (BuildContext context, int index) {
                  return CustomButton(buttonList[index]);
                }),
          ))
        ],
      ),
    );
  }

  Widget CustomButton(String text) {
    return InkWell(
      splashColor: Colors.purple[100],
      onTap: () {
        setState(() {
          handleButtons(text);
        });
      },
      child: Ink(
        decoration: BoxDecoration(
            color: getBgColor(text),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.deepPurpleAccent.withOpacity(0.1),
                blurRadius: 4,
                spreadRadius: 0.5,
                offset: Offset(-3, -3),
              )
            ]),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: getColor(text),
              fontSize: 30,
              fontWeight: FontWeight.bold,
              // color: Colors.purple[100]
            ),
          ),
        ),
      ),
    );
  }

  getColor(String text) {
    if (text == "/" ||
        text == "*" ||
        text == "+" ||
        text == "." ||
        text == "C" ||
        text == "(" ||
        text == ")") {
      return Color(0XFF35155D);
    }
    return Colors.purple;
  }

  getBgColor(String text) {
    if (text == "AC") {
      return Colors.deepPurpleAccent[100];
    }
    if (text == "=") {
      return Colors.deepPurpleAccent[100];
    }
    return Colors.deepPurple[100];
  }

  handleButtons(String text) {
    if (text == "AC") {
      userInput = "";
      result = "0";
      return;
    }
    if (text == "C") {
      if (userInput.isNotEmpty) {
        userInput = userInput.substring(0, userInput.length - 1);
        return;
      } else {
        return null;
      }
    }
    if (text == "=") {
      result = calculate();
      if (result.endsWith(".0")) {
        result = result.replaceAll(".0", "");
        return;
      }
    }
    userInput = userInput + text;
  }

  String calculate() {
    try {
      var exp = Parser().parse(userInput);
      var evaluation = exp.evaluate(EvaluationType.REAL, ContextModel());
      return evaluation.toString();
    } catch (e) {
      return "Error";
    }
  }
}
