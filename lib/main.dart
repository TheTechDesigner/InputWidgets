import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF832685),
        primaryColorLight: Color(0xFFC81379),
        accentColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Input Widgets';

  final formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      // Form
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // TextFormField
              TextFormField(
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                  hintText: 'Enter First Name'
                ),
                validator: (value){
                  if(value.isEmpty){
                    return 'Please enter first name';
                  }
                  return null;
                },
              ),
              TextFormField(
                cursorColor: Colors.purple,
                decoration: InputDecoration(
                  hintText: 'Enter Last Name'
                ),
                validator: (value){
                  if(value.isEmpty){
                    return 'Please enter last name';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: RaisedButton(
                    onPressed: () {
                      // If Invalid
                      if(formKey.currentState.validate()){
                        // If Valid
                      }
                    },
                    child: Text('Submit'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
