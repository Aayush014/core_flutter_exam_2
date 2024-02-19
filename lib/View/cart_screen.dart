import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const SizedBox(width: 20,),
            Image.asset('asset/image/logo.png'),
            const SizedBox(width: 450,),
            const Text('New arrivals'),
            const SizedBox(width: 20,),
            GestureDetector(
                onTap: (){
                  Navigator.pushReplacementNamed(context,'/' );
                },
                child: const Text('men')),
            const SizedBox(width: 20,),
            const Text('women'),
            const SizedBox(width: 20,),
            const Text('kids'),
            const Spacer(),
            const Icon(Icons.shopping_cart),
            const SizedBox(width: 20,),
            const Icon(Icons.favorite_border),
            const SizedBox(width: 20,),
            const Icon(Icons.supervised_user_circle),

          ],
        ),
      ),
    );
  }
}
