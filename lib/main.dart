import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  String msg = "";
  void incrementdata() {
    setState(() {
       if (counter >= 0) {
      counter++;
      msg = "Value Is Incremented..";
    }
    });
  }

  void decrementdata() {
    setState(() {
      if (counter > 0) {
      counter--;
      msg = "Value Is Decremented..";
    }
    });
    
  }

  void resetdata() {
    setState(() {
       counter = 0;
    msg="Value Is Reset..";
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          backgroundColor: Colors.purpleAccent,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "Counter Value is  $counter",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              ElevatedButton(onPressed: incrementdata, child: Text("+")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: decrementdata, child: Text("-")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: resetdata, child: Text("Reset")),
              SizedBox(height: 40),
              Text(msg, style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 111, 54, 244)),),

            ],
          ),
        ),
      ),
    );
  }
}
