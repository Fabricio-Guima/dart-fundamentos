import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Appbar',
            style: TextStyle(fontFamily: 'Tourney'),
          ),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.link_off_outlined),
            ),
          ],
        ),
        drawer: Drawer(child: Center(child: Text('Drawer aberto'))),
        endDrawer: Drawer(child: Center(child: Text('Drawer fechado'))),
        body: Center(
          child: Column(
            children: [
              Text(
                'Academia do flutter',
                style: TextStyle(
                    fontFamily: 'Tourney',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
              Container(
                  width: 200,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 20,
                          offset: Offset(10, 10)),
                      BoxShadow(
                          color: Colors.green,
                          blurRadius: 20,
                          offset: Offset(-10, -10))
                    ],
                  ),
                  child: Center(child: Text('Meu body'))),
            ],
          ),
        ));
  }
}
