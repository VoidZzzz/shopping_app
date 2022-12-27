import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../objects/ipad_list_ob.dart';

class IpadListView extends StatefulWidget {
  IpadListView({Key? key}) : super(key: key);

  List<IpadListOb> list=[
  IpadListOb(image: 'images/8thgen.jpg', name: 'Ipad 8th gen', details: '256 gb, 1 year warranty', price: '289'),
  IpadListOb(image: 'images/9gen.webp', name: 'Ipad 9th gen', details: '128 gb, 1 year warranty', price: '319'),
  IpadListOb(image: 'images/mini6.webp', name: 'Ipad mini6', details: '256 gb, 1 year warranty', price: '359'),
  IpadListOb(image: 'images/ipadprom1.jpg', name: 'Ipad pro M1', details: '256 gb, 2 year warranty', price: '899'),
  IpadListOb(image: 'images/ipadpro2021.jpg', name: 'Ipad pro M2', details: '512 gb, 2 year warranty', price: '1189'),
  ];

  @override
  State<IpadListView> createState() => _IpadListViewState();
}

class _IpadListViewState extends State<IpadListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
          child: Container(
            width: 150,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.grey[850]!, Colors.black],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 146,
                    width: double.maxFinite,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      // color: Colors.g,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(
                      widget.list[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    widget.list[index].name,
                    style: GoogleFonts.roboto(
                        color: Colors.white70,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    widget.list[index].details,
                    style:
                        GoogleFonts.roboto(color: Colors.white38, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        '\$',
                        style: GoogleFonts.roboto(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        widget.list[index].price,
                        style: GoogleFonts.roboto(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
