import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rarefinds/components/my_drawer.dart';
import 'package:rarefinds/components/my_product_tile.dart';
import 'package:rarefinds/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {

    //access prod in shop
    final products=context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Shop Page"),
        actions: [
          //cart button
          IconButton(onPressed: ()=>Navigator.pushNamed(context, '/cart_page'), 
          icon: const Icon(Icons.shopping_cart_outlined))
        ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(height: 25),

            //shop subtitle
            Center(
              child: Text(
                "Pick from a selected list of premium products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
                ),
              ),

            //product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index){
                  //get each individual prod from shop
                  final product=products[index];
              
                  //return as a prod tile UI
                  return MyProductTile(product: product);
            },
          ),
        ),            
          ],
        )
    );
  }
}