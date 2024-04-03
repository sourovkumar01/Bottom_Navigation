import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> MyItems = [
    {
      "img":
          "https://th.bing.com/th/id/OIP.KDUrnlfh00NGJ1tsM0_fiAHaHa?rs=1&pid=ImgDetMain",
      "title": "Business, demo, demonstration",
      "subtitel": "this tis computer"
    },
    {
      "img":
          "https://cdn3.iconfinder.com/data/icons/product-management-soft-fill/60/Product-Demo-business-video-presentation-show-1024.png",
      "title": "Product, demo, business, video,",
      "subtitel": "this tis computer"
    },
    {
      "img":
          "https://cdn2.iconfinder.com/data/icons/miscellaneous-6-solid/128/product_demo_demonstration_presentation-512.png",
      "title": "Business, demo, demonstration",
      "subtitel": "this tis computer"
    },
    {
      "img":
          "https://thumbs.dreamstime.com/z/product-demo-black-glyph-icon-custom-video-content-sign-web-page-mobile-app-button-logo-vector-isolated-element-editable-219185075.jpg",
      "title": "Asus ROG Strix G15",
      "subtitel": "this tis computer"
    },
    {
      "img":
          "https://clipart-library.com/images_k/laptop-png-transparent/laptop-png-transparent-17.png",
      "title": "Apple MacBook Pro 13",
      "subtitel": "this tis computer"
    }
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Communities',
          style:
              TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        toolbarOpacity: 1,
        elevation: 5,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.people_rounded,
                color: Colors.redAccent,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        elevation: 5,
        backgroundColor: Colors.blue,
        currentIndex:0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Home ',
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people_rounded,
                color: Colors.black,
              ),
              label: "My account ",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.add, color: Colors.black),
              label: "Add",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_pin,
                color: Colors.black,
              ),
              label: "Profile",
              backgroundColor: Colors.red),
        ],
        onTap: (int index) {
          if (index == 0) {
            print('This is Home ');
          }
          if (index == 1) {
            print('This is my account ');
          }
          if (index == 2) {
            print('ADD this profil');
          }
          if (index == 3) {
            print('About me');
          }
        },
      ),
      body: ListView.builder(
          itemCount: MyItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){},
              child: Card(
                child: ListTile(
                  leading: Image.network(
                    MyItems[index]['img'],
                    fit: BoxFit.fill,
                  ),
                  title: Text(MyItems[index]['title']),
                  subtitle: Text(
                    MyItems[index]['subtitel'],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
