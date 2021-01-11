import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String imageUrl;
  final bool depo;

  const ProductDetail(
      {Key key, this.productName, this.productPrice, this.imageUrl, this.depo})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Hero(
                tag: imageUrl,
                child: Image.network(imageUrl),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.red[400],
                  size: 40.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                productName,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                productPrice,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[400],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Text(
                  "Product description",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                //for mobile screen = screen
                width: MediaQuery.of(context).size.width - 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  // one line if condition
                  color: depo ? Colors.red[400] : Colors.black,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    depo ? "Add to bag" : "have not stock",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
