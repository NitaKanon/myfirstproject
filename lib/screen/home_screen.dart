import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
      ),
      drawer: Drawer(),
      body: Container(
        color: Colors.blue[400],
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text("Hello World"),
              ElevatedButton(
                onPressed: () => {},
                child: Text("Press me"),
              )
              
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "หน้าหลัก",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.article),
          label: "ข่าวสาร",
        ),
        //BottomNavigationBarItem(icon: Icon(Icons.home), label: "บทความ"),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: "เกี่ยวกับ",
        ),
      ]),
    );
  }
}
