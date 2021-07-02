import 'package:flutter/material.dart';
import 'package:buystuff/components/header.dart';
import 'package:buystuff/components/cart_card.dart';



class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Header(screenName: "Cart", rightWidget: Image.asset(
          "images/search-icon.png",
          width: MediaQuery.of(context).size.width*0.12,
        )),
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 20,),
            CartCard(productImage: "images/clothing1.jpeg", productQuantity: "6", productName: "Men's stripe shirts", storeName: "Lebaiqi Store", price: "24,000",),
            CartCard(productImage: "images/clothing2.jpeg", productQuantity: "1", productName: "Gucci laced gown", storeName: "Lestroy-Women Store", price: "89,000",),
            CartCard(productImage: "images/flip-flops1.jpeg", productQuantity: "2", productName: "Kid's multi-color flip-flops", storeName: "Kid's Garden", price: "1,200",),
            CartCard(productImage: "images/buystuff.png", productQuantity: "2", productName: "Shopping bags", storeName: "Lebaiqi Store", price: "4,000",),
            CartCard(productImage: "images/watch1.jpeg", productQuantity: "1", productName: "Men's leather watch", storeName: "Lebaiqi Store", price: "5,000",),
            CartCard(productImage: "images/sneakers2.jpeg", productQuantity: "1", productName: "Nike Air Jordan-swift series", storeName: "Dock & Friends", price: "43,000",),
            CartCard(productImage: "images/clothing2.jpeg", productQuantity: "1", productName: "1/2 Kids-Gucci laced gown", storeName: "Lestroy-Kid's Store", price: "22,000",),
            CartCard(productImage: "images/cake1.jpeg", productQuantity: "1", productName: "2-Step Strawberry toppings cake", storeName: "Bevah Cakes", price: "9,000",),
            SizedBox(height: 40,),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton.extended(
            label: const Text('NGN 256 000.00', style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: 'Montserrat',
            ),),
            icon: const Icon(Icons.shopping_cart, color: Colors.white, size: 30,),
            backgroundColor: Color(0xFF001F3E),
          ),
        ],
      ),
    );
  }
}

