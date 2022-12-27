import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/objects/iphone_list_view.dart';

class IphoneListView extends StatefulWidget {
  IphoneListView({Key? key}) : super(key: key);

  List<IphoneListViewOb> list=[
    IphoneListViewOb(image: 'images/iph1111.jpg', name: 'Iphone 11', details: '128 gb, 1 year warranty', price: '569'),
    IphoneListViewOb(image: 'images/12.jpg', name: 'Iphone 12', details: '256 gb, 1 year warranty', price: '669'),
    IphoneListViewOb(image: 'images/13.webp', name: 'Iphone 13', details: '128 gb, 2 year warranty', price: '789'),
    IphoneListViewOb(image: 'images/12pro.webp', name: 'Iphone 12 pro', details: '256 gb, 1 year warranty', price: '779'),
    IphoneListViewOb(image: 'images/14promax.jpg', name: '14 pro max', details: '512 gb, 2 year warranty', price: '1899'),
  ];

  @override
  State<IphoneListView> createState() => _IphoneListViewState();
}

class _IphoneListViewState extends State<IphoneListView> {
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
        });
  }
}
