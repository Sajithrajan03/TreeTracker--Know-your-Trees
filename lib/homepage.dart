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
        title:  Container(
          width: 250,
          height: 35,
          decoration: const BoxDecoration(color: Color.fromARGB(230, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: const Center(
            child:  Text('Search for Trees',
            
            
            style: TextStyle(color: Colors.lightGreen,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
            
            )),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {}
             
          )
           
         
        ],
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
        child: Container(
          width: double.infinity,
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
                            builder: (context) => Treeview()));
                  },
                  child: const Text("Click to View the Tree")),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Qrscanner()));
                  },
                  child: const Text("Click to SCAN"))
            ],
          ),
        ),
      ),
    );
  }
}

// class MySearchDelegate extends SearchDelegate {
//   @override
  
//   String get query => super.query;
//   Widget? buildLeading(BuildContext context) => IconButton(
//         icon: const Icon(Icons.arrow_back),
//         onPressed: () => Navigator.pop(context),
//       );

//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     IconButton(
//       icon: const Icon(Icons.clear),
//       onPressed: () {
//         if (query.isEmpty) {
//           close(context, null);
//         } else {
//           query = '';
//         }
//       },
//     );
//     throw UnimplementedError();
//   }

//   @override
//   Widget buildResults(BuildContext context) => Container(
//     child: Text(query,
//     style: const TextStyle(fontSize: 64),),
//   );
  
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     throw UnimplementedError();
//   }
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     List<String> suggestions = [
//       "Neen Tree",
//       "Teak Tree",
//       "Banyan Tree",
//       "Mango Tree"

//     ];
//     return ListView.builder(
//       itemCount: suggestions.length,
//       itemBuilder: (context, index) {
//         final suggestion = suggestions[index];
//         return ListTile(
//           title: Text(suggestion),
//           onTap: () {
//             query = suggestion;
//             showResults(context);
//           },
//         );
//       },
//     );
//   }

