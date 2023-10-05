import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:style_feed/user_pages/assetPaths.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.delete_forever),
            onPressed: () {
              // Perform action
            },
          ),
        ],
      ),

      body: CartItems()
    );
  }
}

class CartItems extends StatefulWidget {
  const CartItems({super.key});

  @override
  State<CartItems> createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: assetPaths.length,
        itemBuilder: (BuildContext context, int index){
          final assetPath = assetPaths[index];
          return Padding(
              padding: EdgeInsets.all(8.0),
              child:
                assetPath,
                //fit: BoxFit.cover, //Adjust image fit

          );
        }
    );
  }
}

class cartItem extends StatelessWidget {
  const cartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        children: <Widget>[
          Image(
            image: AssetImage('assets/items/lacoste.jpg')
          ),
        ]
      )
    );
  }
}


