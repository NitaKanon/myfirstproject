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
      drawer: const Drawer(),
      body: Container(
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom:BorderSide(
                color: Colors.black12,
              ),
            ),
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home), 
                  Text("Home")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.newspaper), 
                  Text("ข่าวสาร")
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info), 
                  Text("เกียบกับ")
                ],
              ),
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
