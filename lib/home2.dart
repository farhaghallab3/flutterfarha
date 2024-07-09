import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage2(),
    );
  }
}

class HomePage2 extends StatelessWidget {
  // Define a list of items
  final List<Item> items = [
    Item(
      imageUrl: 'assets/images/dress6.jpg',
      title: 'Royal Dress',
      subtitle: 'L/XL/XXL',
      price: "50000 \$",
    ),
    Item(
      imageUrl: 'assets/images/dress7.jpg',
      title: 'Once in a lifetime Dress',
      subtitle: 'L/XL/XXL',
      price: "20000 \$",
    ),
    Item(
      imageUrl: 'assets/images/dress8.jpg',
      title: 'Fairy-Tale Dress',
      subtitle: 'M/L/XL/XXL',
      price: "30000 \$",
    ),
    Item(
      imageUrl: 'assets/images/dress9.jpg',
      title: 'Princcess Dress',
      subtitle: 'M/L/XL/XXL/XXXL',
      price: "40000 \$",
    ),
    Item(
      imageUrl: 'assets/images/dress10.jpg',
      title: 'Dutchess Dress',
      subtitle: 'M/L/XL/XXL/XXXL',
      price: "30000 \$",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7D6D9A),
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Color(0xFF7D6D9A))),
      drawer: Drawer(),
      body: Column(
        children: [
          Image.asset(
            'assets/images/final3.png',
            height: 70,
            width: 70,
          ),
          Expanded(
            child: Container(
              color: Color(0xFF7D6D9A),
              padding: EdgeInsets.all(25),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage(items[index].imageUrl),
                            width: 300,
                            height: 350,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          items[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Roboto',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Size: " + items[index].subtitle,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Price: " + items[index].price,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: items.length,
              ),
            ),
          ),
          Container(
            height: 70,
            width: 500,
            color: Colors.white,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'About Us',
                    style: TextStyle(
                      color: Color(0xFF7D6D9A),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'ELshatby,Alexandria       contact:03345678',
                    style: TextStyle(color: Color(0xFF7D6D9A)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Item {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String price;

  Item(
      {required this.imageUrl,
        required this.title,
        required this.subtitle,
        required this.price});
}
