import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScreenAccounts extends StatelessWidget {
  const ScreenAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Account'),
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            color: const Color.fromARGB(255, 224, 230, 235),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  radius: 35,
                  child: Icon(
                    Icons.person_2_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const Gap(30),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 260,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text('Sign in/join',
                              style: TextStyle(color: Colors.white))),
                    ),
                  ],
                )
              ],
            ),
          ),
          acount(const Text('Customer Care')),
          acount(const Text('Invite Friends & Earn')),
          acount(const Text('Coupon Quest')),
          Container(
            height:15 ,
            width: double.infinity,
            color:const Color.fromARGB(255, 224, 230, 235),
          ),
          acount(const Text('notifications')),
            Container(
            height:15 ,
            width: double.infinity,
            color:const Color.fromARGB(255, 224, 230, 235),
          ),
          acount(const Text('Return Creation Demo')),
          acount(const Text('How To Return')),
          acount(const Text('How Do I Redeem My Coupon')),
          acount(const Text('Terms And Conditions')),
          acount(const Text('How To Return')),
        ],
      ),
    );
  }

  Container acount(Widget textwidget) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black38))),
      child: ListTile(
        title: textwidget,
        trailing: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
