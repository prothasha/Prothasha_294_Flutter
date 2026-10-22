import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Homepage"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 178, 23, 90),
        foregroundColor: const Color.fromARGB(255, 250, 250, 250),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
        ],
      ), // AppBar
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 252, 235, 242),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Name",
              style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
              accountEmail: Text("Email",
              style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 145, 55, 92),
              ), // BoxDecoration
            ), // UserAccountsDrawerHeader
            ListTile(
              title: Text("Homepage", style: TextStyle(color: Colors.blueGrey)),
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.home), color: Colors.blueGrey,),
              hoverColor: const Color.fromARGB(255, 248, 215, 228),
              onTap: () {},
            ), // ListTile
            Divider(),
            Spacer(),
            ListTile(
              title: Text("Profile", style: TextStyle(color: Colors.blueGrey)),
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.person), color: Colors.blueGrey,),
              hoverColor: const Color.fromARGB(255, 248, 215, 228),
              onTap: () {},
            ), // ListTile
          ],
        ), // Column
      ), // Drawer
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 194, 83, 127),
                          foregroundColor: Colors.white,
                          fixedSize: Size(150, 50),
                          side: BorderSide(),
                          elevation: 10,
                        ),
                        child: Text("Text Button"),
                      ), // TextButton
                    ), // Padding
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 194, 83, 127),
                          foregroundColor: Colors.white,
                          fixedSize: Size(150, 50),
                          side: BorderSide(),
                          elevation: 10,
                        ),
                        child: Text("Elevated Button"),
                      ), // ElevatedButton
                    ), // Padding
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: OutlinedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 194, 83, 127),
                          foregroundColor: Colors.white,
                          fixedSize: Size(150, 50),
                          side: BorderSide(),
                          elevation: 10,
                        ),
                        child: Text("Outline Button"),
                      ), // OutlinedButton
                    ), // Padding
                    IconButton(onPressed: () {}, icon: Icon(Icons.login, color: const Color.fromARGB(255, 145, 55, 92))),
                  ],
                ), // Row
              ),
              Container(
                height: 200,
                width: 200,
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 252, 235, 242),
                  border: Border.all(
                    width: 5,
                    color: const Color.fromARGB(255, 145, 55, 92),
                  ),
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(20),
                  // ),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [
                      const Color.fromARGB(255, 255, 220, 234),
                      const Color.fromARGB(255, 194, 83, 127),
                    ],
                  ),
                ),
                child: Text("Hello Container", 
                style: TextStyle(fontSize: 15)),
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Card(
                  color: const Color.fromARGB(255, 186, 42, 90),
                  shadowColor: const Color.fromARGB(255, 6, 134, 181),
                  elevation: 20,
                  shape: const CircleBorder(),
                  child: const Center(
                    child: Text("Hello Card"),
                  ),
                ),
              ),
              Image.asset('assets/images/download.jpg'),
              //Image.network('assets/images/download.jpg'),
            ],
          ),
        ),
      ), // Padding
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        backgroundColor: const Color.fromARGB(255, 173, 70, 115),
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Icon(Icons.add),
      ), // FloatingActionButton

      //body: Text(
      //"Hey",
      //style: TextStyle(
      //fontSize: 20,
      //color: const Color.fromARGB(255, 112, 123, 128),
      //),
      //),
    ); // Scaffold
  }
}