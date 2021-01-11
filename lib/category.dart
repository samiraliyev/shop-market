import 'package:flutter/material.dart';
import 'package:fluttermarket/product_detail.dart';

class Category extends StatefulWidget {
  final String category;

  const Category({Key key, this.category}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<Widget> showProductList;
  @override
  void initState() {
    super.initState();
    if (widget.category == "Main eat") {
      showProductList = [
        productCard("Salad", "14\$",
            "https://images.pexels.com/photos/1656666/pexels-photo-1656666.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260.jpg",
            depo: true),
        productCard("Milk", "2.80 \$",
            "https://images.pexels.com/photos/799273/pexels-photo-799273.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Meat", "10 \$",
            "https://images.pexels.com/photos/618775/pexels-photo-618775.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Rice", "3.50 \$",
            "https://images.pexels.com/photos/723198/pexels-photo-723198.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Soup", "2.50 \$",
            "https://images.pexels.com/photos/539451/pexels-photo-539451.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Chicken", "3.50 \$",
            "https://images.pexels.com/photos/1059943/pexels-photo-1059943.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Steak", "18.50 \$",
            "https://images.pexels.com/photos/769289/pexels-photo-769289.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Sushi", "5.50 \$",
            "https://images.pexels.com/photos/670705/pexels-photo-670705.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
      ];
    } else if (widget.category == "Candy") {
      showProductList = [
        productCard("Cheesecake", "6 \$",
            "https://images.pexels.com/photos/1126359/pexels-photo-1126359.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Mix fruit", "14 \$",
            "https://ihttps://images.pexels.com/photos/1132047/pexels-photo-1132047.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Lolipop with chocolate", "5 \$",
            "https://images.pexels.com/photos/33715/cake-pops-pastries-cake-sweet.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Icecreem", "3 \$",
            "https://images.pexels.com/photos/108370/pexels-photo-108370.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Biscuit", "2.80 \$",
            "https://images.pexels.com/photos/230325/pexels-photo-230325.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Haribo", "2.10 \$",
            "https://images.pexels.com/photos/612825/pexels-photo-612825.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
      ];
    }
    if (widget.category == "Drink") {
      showProductList = [
        productCard("Jack Daniels", "22 \$",
            "https://images.pexels.com/photos/339696/pexels-photo-339696.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Mix cold", "4 \$",
            "https://images.pexels.com/photos/616840/pexels-photo-616840.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
        productCard("Fresh", "3 \$",
            "https://images.pexels.com/photos/96974/pexels-photo-96974.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
      ];
    }
    if (widget.category == "Cleaning") {
      showProductList = [
        productCard("Soap", "1.90 \$",
            "https://images.pexels.com/photos/4210336/pexels-photo-4210336.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500.jpg"),
        productCard("Toothbrush", "2.90 \$",
            "https://images.pexels.com/photos/3654607/pexels-photo-3654607.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940.jpg"),
      ];
    }
  }

  Widget productCard(String productName, String price, String imageUrl,
      {bool depo = false}) {
    //GestureDetector for element page forwarded
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          //for change page, which next page
          MaterialPageRoute(
            builder: (context) => ProductDetail(
                productName: productName,
                productPrice: price,
                imageUrl: imageUrl,
                depo: depo),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2.0,
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: imageUrl,
              child: Container(
                width: 120.0,
                height: 80.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              productName,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.red[400],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //screen devider product screen.
      crossAxisCount: 2,
      //space between element horizontal
      mainAxisSpacing: 12.0,
      // space between element vertical
      crossAxisSpacing: 12.0,
      padding: EdgeInsets.all(10.0),
      //element width / height = 1
      childAspectRatio: 1,
      children: showProductList,
    );
  }
}
