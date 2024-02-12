
import 'package:flutter/material.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wish List'),
        centerTitle: true,
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/wishlistimage.jpg',
                      width: 150,
                    ),
                    const Text("NETPLAY"),
                    const Text(
                      "Regular Fit Short-Sleeve",
                      style: TextStyle(
                          color: Color.fromARGB(255, 185, 184, 184),
                          fontSize: 12),
                    ),
                    const Row(
                      children: [
                        Text(
                          '₹320 ',
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          '₹799',
                          style: TextStyle(
                              fontSize: 13,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          ' 72%off',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: const Icon(Icons.delete),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag),
                            label: const Text('Add to Bag'))
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/watches.jpg',
                      width: 150,
                    ),
                    const Text("WATCHES"),
                    const Text(
                      "Regular Fit Casual Watches",
                      style: TextStyle(
                          color: Color.fromARGB(255, 185, 184, 184),
                          fontSize: 12),
                    ),
                    const Row(
                      children: [
                        Text(
                          '₹499 ',
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          '₹999',
                          style: TextStyle(
                              fontSize: 13,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          ' %off',
                          style: TextStyle(fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: const Icon(Icons.delete),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_bag),
                            label: const Text('Add to Bag'))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
