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
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
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
                    children: [Icon(Icons.home), Text("Home")],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.newspaper), Text("ข่าวสาร")],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.info), Text("เกียบกับ")],
                  ),
                ],
              ),
            ),
            Container(
              height: 280,
              color: Colors.blue,
              child: Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                     padding: EdgeInsets.only(top: 10, right: 10, left: 10),
                    width: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                           width: double.infinity,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black54,
                            ),
                          ),
                          child: Text("Strawberry Pavlova"),
                        ),
                        Container(
                           width: double.infinity,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black54,
                            ),
                          ),
                          child: Text("Pavlova is a meringue-basd \n dessert named after  the Russian \n ballerine Anna Pavlova \n Pavlova featues a crisp srust and \n soft, light inside, topped with fruit\n andwhipped cream"),
                        ),
                        Container(
                           width: double.infinity,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black54,
                            ),
                          ),
                          child: Row(
                            children:[
                              Icon(Icons.star,size:10),
                              Icon(Icons.star,size:10),
                              Icon(Icons.star,size:10),
                              Icon(Icons.star,size:10),
                              Icon(Icons.star,size:10),
                              Text("170 Reviews")
                            ]
                          ),
                        ),
                        Container(
                           decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black54,
                            ),
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Icon(Icons.ac_unit),
                                  Text("Prep :"),
                                  Text("25 mins"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.lock_clock),
                                  Text("Cook"),
                                  Text("1 hrs"),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(Icons.ac_unit),
                                  Text("Feed :"),
                                  Text("4-6"),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            )
          ],
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
