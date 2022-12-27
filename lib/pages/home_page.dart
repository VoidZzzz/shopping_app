import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shopping_app/widgets/gnav.dart';
import 'package:shopping_app/widgets/text_form_field.dart';
import 'package:shopping_app/widgets/tab_bar.dart';
import 'package:shopping_app/widgets/vertical_list_view.dart';

import '../objects/vertical_list_ob.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <VerticalListOb> listVertical = [
    VerticalListOb(image:'images/xs.webp', productName: 'Iphone Xs', thenPrice: '479\$', nowPrice: ' 429\$', details: '256 gb, 1 year warranty'),
    VerticalListOb(image:'images/coooler.jpg', productName: 'Phone Cooler', thenPrice: '109\$', nowPrice: ' 89\$', details: '1 year warranty'),
    VerticalListOb(image:'images/headphone.jpg', productName: 'Fantech MARS II', thenPrice: '239\$', nowPrice: '219\$', details: '1 year warranty'),
    VerticalListOb(image:'images/RTX3090.jpg', productName: 'RTX 3090', thenPrice: '1499\$', nowPrice: ' 1419\$', details: '3 year warranty'),
    VerticalListOb(image:'images/m2.webp', productName: 'Macbook pro M2', thenPrice: '1399\$', nowPrice: ' 1369\$', details: '512 gb, 3 year warranty'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: <Color>[Colors.black, Colors.grey[900]!],
                ),
              ),
              child: const Icon(Icons.menu),
            ),
            Container(
              height: 45,
              width: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage('images/avatar.png'),
                ),
                gradient: LinearGradient(
                  colors: <Color>[Colors.black, Colors.grey[900]!],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Best deal to find your needs',
              style: GoogleFonts.roboto(
                  color: Colors.white70,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const SizedBox(height: 20),
            const MainTextFormField(),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                  height: 310,
                  width: double.maxFinite,
                  child: const HorizontalTabBar()),
            ),
            const SizedBox(height: 20),
            Text('Discounted items',style: GoogleFonts.roboto(fontSize: 25,color: Colors.white70,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            Container(width: double.maxFinite,height: 200,child: VerticalListView(list: listVertical,)),
          ],
        ),
      ),
      bottomNavigationBar: const GnavBar(),
    );
  }
}
