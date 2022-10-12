import 'package:day11/ContainerItem.dart';
import 'package:day11/Menupage.dart';
import 'package:day11/singlepage.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List MenuList = [
    ["Home", true],
    ["Book", false],
    ["Phone", false],
    ["Cat", false],
  ];

  menufctn(int index) {
    setState(() {
      for (int i = 0; i < MenuList.length; i++) {
        MenuList[i][1] = false;
      }
      MenuList[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: Icon(
              Icons.menu,
              color: Colors.redAccent,
              size: 30,
            ),
            title: Text(
              "List page view",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              Icon(
                Icons.android,
                size: 30,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
            ]),
        body: ListView(
          children: [
            Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: TextFctn(
                      "Search Item", 24.0, Colors.black38, FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                    hintText: "Search bar",
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green))),
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height * 0.1,
                color: Colors.transparent,
                child: ListView.builder(
                    itemCount: MenuList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return MenuBar(
                          nameofmenubar: MenuList[index][0],
                          isclick: MenuList[index][1],
                          onclick: () {
                            menufctn(index);
                          });
                    })),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyWidget(
                    photo:
                        "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    productname: "Car",
                    clr: Colors.blueGrey,
                    fctn: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SinglePage(
                                  chobi:
                                      "https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                  name: "Sports Car",
                                  description:
                                      "McLaren Racing Limited is a British motor racing team based at the McLaren Technology Centre in Woking, Surrey, England. McLaren is best known as a Formula ",
                                  Rating: 9.7,
                                )),
                      );
                    },
                  ),
                  MyWidget(
                    photo:
                        "https://images.unsplash.com/photo-1544716278-ca5e3f4abd8c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
                    productname: "Book",
                    clr: Colors.blueGrey,
                    fctn: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SinglePage(
                                  chobi:
                                      "https://images.unsplash.com/photo-1509021436665-8f07dbf5bf1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80",
                                  name: "Story Book",
                                  description:
                                      "countable noun. A storybook is a book of stories for children. As a child she learned to draw by tracing pictures out of her mother's old storybooks. ",
                                  Rating: 6.3,
                                )),
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyWidget(
                    photo:
                        "https://images.unsplash.com/photo-1596854407944-bf87f6fdd49e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80",
                    productname: "Cat",
                    clr: Colors.indigo,
                    fctn: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SinglePage(
                                  chobi:
                                      "https://images.unsplash.com/photo-1519052537078-e6302a4968d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                  name: "Cute Cat",
                                  description:
                                      "They have fur that's pleasing to touch. They make high-pitched, baby-like meows and comforting, rumbly purrs. Cats are chock full of cute characteristics that make humans want to take care of them.",
                                  Rating: 8.1,
                                )),
                      );
                    },
                  ),
                  MyWidget(
                    photo:
                        "https://images.unsplash.com/photo-1565849904461-04a58ad377e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1936&q=80",
                    productname: "Mobile",
                    clr: Colors.indigo,
                    fctn: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SinglePage(
                                  chobi:
                                      "https://images.unsplash.com/photo-1607270788732-55d2cdb8f52a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                  name: "Android Mobile",
                                  description:
                                      "The Android operating system is a mobile operating system that was developed by Google (GOOGL​) to be primarily used for touchscreen devices, cell phones, and tablets.",
                                  Rating: 8.9,
                                )),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextFctn(String Textname, double size, Color clr, [FontWeight? fw]) {
    return Text("$Textname",
        style: TextStyle(fontSize: size, color: clr, fontWeight: fw));
  }
}
