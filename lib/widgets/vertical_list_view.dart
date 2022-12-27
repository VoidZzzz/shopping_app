import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/objects/vertical_list_ob.dart';

class VerticalListView extends StatefulWidget {
  VerticalListView({Key? key,required this.list}) : super(key: key);

  final List<VerticalListOb> list;


  @override
  State<VerticalListView> createState() => _VerticalListViewState();
}

class _VerticalListViewState extends State<VerticalListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.list.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: <Color>[Colors.grey[800]!, Colors.black],
                ),
              ),
              height: 110,
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Stack(children: [
                    Container(
                        height: 90,
                        width: 120,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset(
                          widget.list[index].image,
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                        top: -5,
                        right: -5,
                        child: Container(
                          // color: Colors.white,
                          height: 50,
                          width: 60,
                          child: Image.asset(
                            'images/pricee.webp',
                            fit: BoxFit.cover,
                          ),
                        ),),
                  ]),
                  const SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.list[index].productName,
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                      const SizedBox(height: 2),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                          text: widget.list[index].thenPrice,
                          style: GoogleFonts.roboto(
                              color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough),
                        ),
                        TextSpan(
                          text: widget.list[index].nowPrice,
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ])),
                      const SizedBox(height: 8),
                      Text(
                        widget.list[index].details,
                        style: GoogleFonts.roboto(
                            color: Colors.white70,
                            fontSize: 14,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
