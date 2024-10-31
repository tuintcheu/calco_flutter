import 'package:flutter/material.dart';
import 'package:expressions/expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calco de phafa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'calco de phafa'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String num = " ";
  String opp = "";
  String init = "0";

  void OnpressButton(String value) {
    setState(() {
      if (value == 'ac') {
        num = "";
      } else if (value == "+" ||
          value == "-" ||
          value == "*" ||
          value == "/" ||
          value == "%") {
        num = num + " " + value + " ";
      } else if (value == "." ||
          value == "1" ||
          value == "2" ||
          value == "3" ||
          value == "4" ||
          value == "5" ||
          value == "6" ||
          value == "7" ||
          value == "8" ||
          value == "9" ||
          value == "0") {
        num = num + value;
      } else if (value == "<--") {
        if (num.isNotEmpty) {
          num = num.substring(0, num.length - 1);
        } else {
          num = "";
        }
      } else if (value == "+/-") {
        num = "-" + num;
      }

      if (value == "=") {
        try {
          final exp = Expression.parse(num); // Correction: num est une chaîne
          final evaluator =
              const ExpressionEvaluator(); // Correction: Instancier correctement
          final res = evaluator.eval(exp, {}); // Correction: Utiliser exp ici
          num = res.toString();
        } catch (e) {
          num = "ERROR!!!";
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Wrap(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(top: 50),
            //color: Colors.amber,
            height: 100,
            width: 400,

            child: const Text(
              'calco de phafa',
              style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Colors.lime),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerRight,
            color: Colors.white10,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              reverse: true,
              child: Text(
                num,
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 170,
          ),
          Wrap(
            spacing: 20,
            alignment: WrapAlignment.start,
            children: [
              TextButton(
                onPressed: () {
                  OnpressButton('ac');
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(80, 80),
                ),
                child: const Text(
                  'AC',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("<--");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.red, minimumSize: Size(80, 80)),
                child: const Text(
                  '<--',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("+/-");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.grey, minimumSize: Size(80, 80)),
                child: const Text(
                  '\u00b1',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("/");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber, minimumSize: Size(80, 80)),
                child: const Text(
                  '/',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                width: 400,
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("7");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '7',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("8");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '8',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("9");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '9',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton('*');
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber, minimumSize: Size(80, 80)),
                child: const Text(
                  'X',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                width: 400,
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("4");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '4',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("5");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '5',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("6");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '6',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("-");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber, minimumSize: Size(80, 80)),
                child: const Text(
                  '-',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                width: 400,
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("1");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '1',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("2");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '2',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("3");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '3',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("+");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber, minimumSize: Size(80, 80)),
                child: const Text(
                  '+',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Container(
                width: 400,
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("0");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30,
                    minimumSize: Size(180, 80)),
                child: const Text(
                  '0',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton(".");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white30, minimumSize: Size(80, 80)),
                child: const Text(
                  '.',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  OnpressButton("=");
                },
                style: TextButton.styleFrom(
                    backgroundColor: Colors.amber, minimumSize: Size(80, 80)),
                child: const Text(
                  '=',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
