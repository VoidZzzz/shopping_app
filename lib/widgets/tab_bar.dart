import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/widgets/Ipad_list_view.dart';
import 'package:shopping_app/widgets/iphone_list_view.dart';
import 'package:shopping_app/widgets/samsung_list_view.dart';

class HorizontalTabBar extends StatefulWidget {
  const HorizontalTabBar({Key? key}) : super(key: key);

  @override
  State<HorizontalTabBar> createState() => _HorizontalTabBarState();
}
class _HorizontalTabBarState extends State<HorizontalTabBar>
with SingleTickerProviderStateMixin{

  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: TabBar(controller: _tabController,
            unselectedLabelColor: Colors.white70,
              indicatorColor: Colors.deepOrange,indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.deepOrange,isScrollable: false,labelStyle: GoogleFonts.roboto(fontWeight: FontWeight.bold,color: Colors.white70),
            tabs: const [
              Text('Iphone'),
              Text('Samsung'),
              Text('Ipad'),
            ],
          ),
        ),
        Expanded(flex: 6,
          child: TabBarView(controller: _tabController,children: [
            IphoneListView(),
            SamSungListView(),
            IpadListView(),
          ]),
        )
      ],
    );
  }
}

