import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScreenStores extends StatefulWidget {
  const ScreenStores({super.key});

  @override
  State<ScreenStores> createState() => _ScreenStoresState();
}

class _ScreenStoresState extends State<ScreenStores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 238, 242),
        leading: const Icon(Icons.menu_rounded),
        title: const Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Center(child: Text('STORE')),
            ],
          ),
        ),
        actions: const [
          Icon(Icons.notifications),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white,
              ),
              width: 340,
              child: TextFormField(
                decoration: const InputDecoration(
                  iconColor: Colors.white,
                  hintText: 'search by product, brand & more...',
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt_outlined),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Image.asset(
                'assets/images/explorehead.jpg',
                fit: BoxFit.cover,
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 320,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 900),
                viewportFraction: 1,
              ),
              items: [
                'assets/images/expslider1.jpg',
                'assets/images/expslider2.jpg',
                'assets/images/expslider3.jpg',
                'assets/images/expslider4.jpg',
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 60),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: Image.asset('assets/images/homewinterbar.jpg'),
            ),
            const Gap(20),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/homewinter1.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Gap(40),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/homewinter2.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const Gap(40),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/homewinter3.jpg',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
