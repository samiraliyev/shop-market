import 'package:flutter/material.dart';
import 'package:fluttermarket/menuItems.dart';
import 'package:fluttermarket/myBag.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //for change on screen element with bottomnavigationbar
  int _activeElement = 0;
  // for screen elements
  List<Widget> _items;

  @override
  void initState() {
    super.initState();
    _items = [MenyuItems(), MyBag()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red[400]),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Fastly delivery",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
      ),
      body: _items[_activeElement],
      //left section for personal information and some functions
      drawer: Drawer(
        child: ListView(
          children: [
            //personal info
            UserAccountsDrawerHeader(
              accountName: Text("Samir Aliyev"),
              accountEmail: Text("samir.aliyev@code.edu.az"),
              //for personal image
              currentAccountPicture: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg",
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              decoration: BoxDecoration(color: Colors.red[400]),
            ),
            //for personal info under section
            ListTile(
              title: Text("My orders"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Cupons"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Setting"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Logout"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeElement,
        selectedItemColor: Colors.red[400],
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Menu",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Bag",
          ),
        ],
        onTap: (int clickNavigationElement) {
          setState(() {
            _activeElement = clickNavigationElement;
          });
        },
      ),
    );
  }
}
