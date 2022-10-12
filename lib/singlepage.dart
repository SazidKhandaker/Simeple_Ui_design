import 'package:flutter/material.dart';

class SinglePage extends StatelessWidget {
  String chobi;
  String name;
  String description;
  double Rating;
  SinglePage(
      {required this.chobi,
      required this.name,
      required this.description,
      required this.Rating});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Single page"),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: NetworkImage("$chobi"),
                      fit: BoxFit.cover,
                      opacity: 2,
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$name",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$description ",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 10, left: 30, right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                    size: 40,
                  ),
                  Text(
                    "$Rating",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Center(
                    child: Container(
                  height: 80,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(4, 4),
                          blurRadius: 10,
                        ),
                        BoxShadow(
                          offset: Offset(-4, -4),
                          blurRadius: 10,
                        ),
                      ]),
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(90),
                                bottomLeft: Radius.circular(90),
                                bottomRight: Radius.circular(140))),
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.shopping_basket,
                        color: Colors.green,
                        size: 25,
                      )
                    ],
                  ),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
