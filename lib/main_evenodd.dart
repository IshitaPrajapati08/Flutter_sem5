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
  final TextEditingController numberController = TextEditingController();
  String result = "";

  void evenoddfind(){
    setState(() {
      if (numberController.text.isEmpty) {
        result = "Please enter a number";
        return;
      }
      int number= int.parse(numberController.text);
      if(number % 2 == 0){    
        result = "The number is Even";
      } else {
        result = "The number is Odd";
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Even-Odd App"),
          backgroundColor: Colors.amber,
        ),
        body:Center(
          child:Column(
            children:[
              TextField(
                controller:numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter a number',
                ),
              ),
               SizedBox(height: 20),
              ElevatedButton(
                onPressed: evenoddfind,
                child:Text("check"),
              ),
              SizedBox(height: 20),
              Text(result),
            ]
          )
        ),
      ),
    );
  }
}