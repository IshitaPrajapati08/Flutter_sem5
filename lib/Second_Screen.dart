import 'package:flutter/material.dart';
import 'package:practice_app/Third_Screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('let\'s chat!!'),
        backgroundColor: const Color.fromARGB(255, 212, 0, 131),
      ),
      body:Column(
        children:[
          Expanded
          (child:ListView(
        children: [
          ListTile(
            title: Text("Ishita"),
            subtitle: Text("Hello"),
            leading: Image.asset("assets/images/girl2.png"),
            trailing: Icon(Icons.navigate_before_rounded),
          ),
          ListTile(
            title: Text("Jeeya"),
            subtitle: Text("Bonjour!!"),
            leading: Image.asset("assets/images/girl1.png"),
            trailing: Icon(Icons.navigate_before_rounded),
          ),
          ListTile(
            title: Text("Madhura"),
            subtitle: Text("Hola!"),
            leading: Image.asset("assets/images/girl2.png"),
            trailing: Icon(Icons.navigate_before_rounded),
          ),
          ListTile(
            title: Text("Dhairyati"),
            subtitle: Text("Enchante!"),
            leading: Image.asset("assets/images/girl1.png"),
            trailing: Icon(Icons.navigate_before_rounded),
          ),
          ListTile(
            title: Text("Tarishi"),
            subtitle: Text("Hii"),
            leading: Image.asset("assets/images/girl2.png"),
            trailing: Icon(Icons.navigate_before_rounded),
          ),
          ListTile(
            title: Text("Niyati"),
            subtitle: Text("Au revoir!"),
            leading: Image.asset("assets/images/girl1.png"),
            trailing: Icon(Icons.navigate_before_rounded),
          ),
        ],
          ),
          ),
          SizedBox(height:10),
          ElevatedButton(
            onPressed:(){
              Navigator.pushReplacement(context, 
              MaterialPageRoute(builder:(context)=>ThirdScreen()));
            },
            child:Text("Third Screen"),
          ),
        ],
      ),
    ),
    );
  }
}