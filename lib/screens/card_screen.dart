import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://img.freepik.com/premium-vector/meadows-landscape-with-mountains-hill_104785-943.jpg?w=2000'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://i.ytimg.com/vi/c7oV1T2j5mc/maxresdefault.jpg'),
          SizedBox(height: 20),
          CustomCardType2(name: 'Landscape-Tips-Mike-Mezeul-II', imageUrl: 'https://cdn3.dpmag.com/2021/07/Landscape-Tips-Mike-Mezeul-II.jpg'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}

