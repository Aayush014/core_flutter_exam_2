import 'package:flutter/material.dart';

import '../Utils/global.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            Image.asset('asset/image/logo.png'),
            const SizedBox(
              width: 450,
            ),
            const Text('New arrivals'),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Text('men')),
            const SizedBox(
              width: 20,
            ),
            const Text('women'),
            const SizedBox(
              width: 20,
            ),
            const Text('kids'),
            const Spacer(),
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'cart');
                },
                child: const Icon(Icons.shopping_cart)),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.favorite_border),
            const SizedBox(
              width: 20,
            ),
            const Icon(Icons.supervised_user_circle),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Row(
                children: [
                  Container(
                    height: 650,
                    width: 1190,
                    color: Colors.white,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 650,
                        width: 330,
                        color: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50, left: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Description',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'The Jordan Delta 2 offers a fresh, fearless take on \n the features you want: durability, comfort and an \n attitude that s Jordan to the core. We updated \n design lines and swapped out some components. \nThe 2 still has that clashing combination of \nsupportive and space age-like materials, with lots \n of different textures and heavy stitching to create \n a look that s both adventurous and iconic.',
                              style: TextStyle(fontSize: 10),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(color: Colors.black),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'Select size',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: List.generate(productsize2.length,
                                  (index) => smallbox(index)),
                            ),
                            Row(
                              children: List.generate(productsize.length,
                                  (index) => smallbox2(index)),
                            ),
                            Row(
                              children: List.generate(productsize3.length,
                                  (index) => smallbox3(index)),
                            ),
                            Row(
                              children: List.generate(productsize4.length,
                                  (index) => smallbox4(index)),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              children: [
                                const Icon(Icons.remove),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Icon(Icons.add),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                    height: 50,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(color: Colors.yellow),
                                    ),
                                    child: const Center(
                                        child: Text(
                                      'Add to Cart',
                                      style: TextStyle(color: Colors.white),
                                    )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100, left: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                        ),
                        SizedBox(
                          width: 800,
                        ),
                        Icon(Icons.favorite_border),
                      ],
                    ),
                    Text(
                      '78, 000RWF',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 400),
                child: Container(
                    height: 500,
                    width: 500,
                    color: Colors.white,
                    child: Image.asset(
                      'asset/image/image14.png',
                      fit: BoxFit.cover,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget smallbox(index) {
  return Column(
    children: [
      const SizedBox(
        width: 50,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          '${productsize[index]['size']}',
        )),
      ),
    ],
  );
}

Widget smallbox2(index) {
  return Column(
    children: [
      const SizedBox(
        width: 50,
        height: 10,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('${productsize2[index]['size']}')),
      ),
    ],
  );
}

Widget smallbox3(index) {
  return Column(
    children: [
      const SizedBox(
        width: 50,
        height: 10,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('${productsize3[index]['size']}')),
      ),
    ],
  );
}

Widget smallbox4(index) {
  return Column(
    children: [
      const SizedBox(
        width: 50,
        height: 10,
      ),
      Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text('${productsize4[index]['size']}')),
      ),
    ],
  );
}
