import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
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
              Center(child: Text('Ajio')),
              Icon(Icons.arrow_drop_down_rounded)
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 120,
                    width: 100,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/images/men-winter-casual-style.png',
                          ),
                        ),
                        const Text('casuals')
                      ],
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: 120,
                    width: 100,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/appbarimg1.jpg'),
                        ),
                        const Text('winter wear'),
                      ],
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: 120,
                    width: 100,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/shoes.jpg')),
                        const Text('sneakers'),
                      ],
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: 100,
                    width: 120,
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset('assets/images/accessories.jpg'),
                        ),
                        const Text('ACCESSORIES')
                      ],
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: 90,
                    width: 100,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/beauty.jpg')),
                        const Text('BEAUTY')
                      ],
                    ),
                  ),
                  const Gap(10),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('assets/images/watches.jpg')),
                        const Text('WATCHES')
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 900),
                viewportFraction: 1,
              ),
              items: [
                'assets/images/womencarorsel.jpg',
                'assets/images/corasel image.jpg',
                'assets/images/coraselkids.jpg',
                'assets/images/carorselwinter.jpg',
                'assets/images/coraselmens.jpg'
              ].map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
            const Gap(20),
            SizedBox(
              height: 50,
              width: 600,
              child: Row(
                children: [
                  Image.asset('assets/images/deliveryimg.jpg'),
                ],
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 60,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 300),
                viewportFraction: 1,
              ),
              items: [
                'assets/images/smallcarasel.jpg',
                'assets/images/yesbank.jpg',
                'assets/images/sbi.jpg',
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
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.lightBlueAccent,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/image1.jpg'),
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/image2.jpg'),
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/image3.jpg'),
                    ),
                    SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.asset('assets/images/image4.jpg'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
