import 'package:flutter/material.dart';
import 'package:real_state/widgets/Menu/side_menu_section.dart';

import '../Responsev.dart';
import '../contains.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSection});
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: 
              
              
              [
                if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenuSection(),
                ),
                Expanded(flex: 7, child: mainSection),
                 SizedBox(width: kDefaultPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
