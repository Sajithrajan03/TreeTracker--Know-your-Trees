import "package:flutter/material.dart";

class Treeview extends StatefulWidget {
  const Treeview({super.key});

  @override
  State<Treeview> createState() => TreeviewState();
}

class TreeviewState extends State<Treeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            title:Text('Neem Tree'),
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
            child: ListView(children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 40, 175, 89), Color.fromARGB(255, 63, 106, 222)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.5, 0.9],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          minRadius: 35.0,
                          child: const Icon(
                            Icons.add_location_rounded,
                            
                            
                            size: 50.0,
                            color: Colors.green,
                          ),
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.white70,
                          minRadius: 60.0,
                          child: CircleAvatar(
                            radius: 60.0,
                            backgroundColor: Colors.white70,
                            backgroundImage: NetworkImage(
                                            'https://clipart-library.com/images_k/tree-clipart-transparent/tree-clipart-transparent-25.jpg')                         ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red.shade300,
                          minRadius: 35.0,
                          child: const Icon(
                            Icons.message,
                            size: 30.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Neem Tree',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const Text(
                      'Azadirachta indica, commonly known as margosa, neem, nimtree or Indian lilac, is a tree in the mahogany family Meliaceae. It is one of two species in the genus Azadirachta',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 255, 0),
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        color: Colors.deepOrange.shade300,
                        child: const ListTile(
                          title: Text(
                            '5000',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Color.fromARGB(255, 227, 66, 66),
                            ),
                          ),
                          subtitle: Text(
                            'Trees near you',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                        child: const ListTile(
                          title: Text(
                            'Stats',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          subtitle: Text(
                            'About this tree',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: const Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Benefits',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Removes Toxins',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Height',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Upto 30 M in height and 20 M in width',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Other Names',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        'Margosa, Neem, Nimtree or Indian lilac',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }
}
