import 'package:flutter/material.dart';

void main() {
  runApp(const app());
}
class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff54759E),
            leading: Icon(Icons.menu,color: Colors.white,),
            centerTitle: true,
            title: Text('Calculator',style: TextStyle(
              color: Colors.white,
            ),),
          ),
          body: Center(
              child: Text('$count',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),)
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                count++;
              });
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
int count =0;