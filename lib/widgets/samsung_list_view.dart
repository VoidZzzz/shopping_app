import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/objects/samsung_List_view_objects.dart';

class SamSungListView extends StatefulWidget {
  SamSungListView({Key? key}) : super(key: key);

  List<SamsungListOb> list =[
    SamsungListOb(price: '799', details: '256 gb, 1 year warranty', name: 'Z Fold 3', image: 'images/zfold3.jpg'),
    SamsungListOb(price: '1099', details: '256 gb, 2 year warranty', name: 'Z Fold 4', image: 'images/zfold4.jpg'),
    SamsungListOb(price: '649', details: '512 gb, 1 year warranty', name: 'Samsung S22', image: 'images/samsungs22.webp'),
    SamsungListOb(price: '379', details: '128 gb, 1 year warranty', name: 'Samsung M53', image: 'images/M53.jpg'),
    SamsungListOb(price: '339', details: '128 gb, 1 year warranty', name: 'Samsung A53', image: 'images/A53.jpg'),
  ];

  @override
  State<SamSungListView> createState() => _SamSungListViewState();
}

class _SamSungListViewState extends State<SamSungListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.list.length,
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
                      child: Image.asset(widget.list[index].image,fit: BoxFit.cover,),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      widget.list[index].name,
                      style: GoogleFonts.roboto(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
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
        });
  }
}
