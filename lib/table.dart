
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()
{
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
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle:true,
            title: Text('Calulater'),
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
                children: List.generate(l1.length, (index) => Text('5*${index+1}=${5*(index+1)}',style: TextStyle(fontSize: 20,),))
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: (){
            setState(() {
              count++;
              l1.add(count);
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

List l1 =[];