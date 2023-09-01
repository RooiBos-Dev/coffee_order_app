import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Coffee time?",
          body: "Here is how to place an order",
          image: Lottie.asset(
            'assets/coffee_shop.json',
            height: 350,
            width: 350,
          ), // Replace with your image
          decoration: const PageDecoration(
            pageColor: Color(0xff222325), // Customize the background color
            bodyTextStyle: TextStyle(color: Color(0xffebdbcc)),
            titleTextStyle: TextStyle(
              color: Color(0xffebdbcc),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        PageViewModel(
          title: "Brew",
          body:
              "Select one or more items from the menu. Wether it is for your personal focus time or for boredroom meeting participants. Be sure to check out item customisation options!",
          image: Lottie.asset(
            'assets/coffee_shop_2.json',
            height: 350,
            width: 350,
          ), // Replace with your image
          decoration: const PageDecoration(
            pageColor: Color(0xff222325), // Customize the background color
            bodyTextStyle: TextStyle(color: Color(0xffebdbcc)),
            titleTextStyle: TextStyle(
              color: Color(0xffebdbcc),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        PageViewModel(
          title: "Collect & Delivery",
          body:
              "Request delivery to one of the designated office locations or collect at the kitchen.",
          image: Lottie.asset(
            'assets/coffee_shop_3.json',
            height: 700,
            width: 700,
          ), // Replace with your image
          decoration: const PageDecoration(
            pageColor: Color(0xff222325), // Customize the background color
            bodyTextStyle: TextStyle(color: Color(0xffebdbcc)),
            titleTextStyle: TextStyle(
              color: Color(0xffebdbcc),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        PageViewModel(
          title: "Checkout",
          body:
              "Make sure you have exactly what you need and proceed to checkout. Once your order has been places you can track your order in the queue.",
          image: Lottie.asset(
            'assets/coffee_shop_2.json',
            height: 350,
            width: 350,
          ), // Replace with your image
          decoration: const PageDecoration(
            pageColor: Color(0xff222325), // Customize the background color
            bodyTextStyle: TextStyle(color: Color(0xffebdbcc)),
            titleTextStyle: TextStyle(
              color: Color(0xffebdbcc),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
      onDone: () {
        // Navigate to the home screen or next page after intro
        // For example: Navigator.pushReplacementNamed(context, '/home');
      },
      onSkip: () {
        // You can also handle the "skip" button action
      },
      showSkipButton: true,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeColor: Colors.blue,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
