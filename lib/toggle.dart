import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: isDark?ThemeMode.dark:ThemeMode.light,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Toggle App..'),
          backgroundColor: Colors.purple,
          actions:[
            Switch(
              value:isDark,
              onChanged: (value) => {
                setState(() {
                  isDark=value;
                }),
              },
            )
          ],
        ),
        body: Center(
          child: Text(
            isDark ? "Dark Mode" : "Light Mode",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
