import 'package:flutter/material.dart';

import 'package:real_state/screens/Home_screen.dart';


import 'home_banner.dart';
import 'icon_info.dart';
import 'projects.dart';
import 'recommendation.dart';


class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(mainSection: SingleChildScrollView(
      child: Column(
        children: [
          HomeBanner(),
          IconInfo(),
          Projects(),
          Recommendations(),
        ],
      ),
    ));
  }
}