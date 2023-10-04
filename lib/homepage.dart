import "package:flutter/material.dart";
import 'package:treetracker/treeview.dart';
import 'qrscan.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title:Text('Tree Tracker'),
            ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 165, 249, 123),
            Color.fromARGB(255, 84, 149, 255),
          ],
        )),
        child: Row(
          children: <Widget>[
            Container(
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: const Color.fromARGB(255, 8, 102, 255),
                  border: Border.all(
                    width: 5,
                    color: const Color.fromARGB(10, 0, 0, 0),
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 104, 244, 34),
                      Color.fromARGB(255, 4, 97, 248),
                    ],
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Treeview()));
                      },
                      child: const Text("Click to View the Tree")),
                  SizedBox(height: 50,),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Qrscanner()));
                      },
                      child: const Text("Click to SCAN"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
