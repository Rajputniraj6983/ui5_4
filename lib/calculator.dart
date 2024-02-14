import 'package:flutter/material.dart';

void main() {
  runApp(const Calc());
}

int num = 0;

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffdedcdc),
        appBar: AppBar(
          backgroundColor: const Color(0xff54759e),
          leading: const Icon(Icons.menu, color: Colors.white54),
          title: const Text(
            'Calculator',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          elevation: 10,
          shadowColor: Colors.grey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$num',
                    style: const TextStyle(fontSize: 100, color: Colors.grey),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        num -= 2;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(vertical: 40),
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.38,
                      decoration: BoxDecoration(
                          color: const Color(0xff54759e),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text('- 2',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        num += 2;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.38,
                      decoration: BoxDecoration(
                          color: const Color(0xff54759e),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text('+ 2',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        num -= 4;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.38,
                      decoration: BoxDecoration(
                          color: const Color(0xff54759e),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text('- 4',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        num += 4;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.38,
                      decoration: BoxDecoration(
                          color: const Color(0xff54759e),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text('+ 4',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        num = 0;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      height: screenHeight * 0.06,
                      width: screenWidth * 0.38,
                      decoration: BoxDecoration(
                          color: const Color(0xff54759e),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text('Clear',
                          style: TextStyle(color: Colors.white, fontSize: 30)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}