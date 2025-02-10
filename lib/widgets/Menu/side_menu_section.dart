

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state/contains.dart';
import 'package:real_state/widgets/Menu/Goals.dart';
import 'package:real_state/widgets/Menu/contact_info.dart';

import 'logo.dart';


class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(child:Column(
        children: [
          Logo(),
          Expanded(child: 
          SingleChildScrollView(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactInfo(),
                Divider(),
                Goals(),
                Divider(),
                SizedBox(height: kDefaultPadding / 2,),
                TextButton(onPressed:(){} , child:FittedBox(
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/download.svg'),
                      SizedBox(width: kDefaultPadding / 2,),
                      Text('Download Brochure',
                      style: TextStyle(color: Theme.of(context)
                      .textTheme.bodySmall!.color
                      
                      ),
                      )
                    ],
                  ),
                ),
                 ),
                 Container(
                  margin: EdgeInsets.only(top: kDefaultPadding *2),
                  color: kSecondaryColor,
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(onPressed: (){},
                       icon: SvgPicture.asset('assets/icons/linkedin.svg')),
                        IconButton(onPressed: (){},
                       icon: SvgPicture.asset('assets/icons/github.svg')),
                        IconButton(onPressed: (){},
                       icon: SvgPicture.asset('assets/icons/twitter.svg')),
                        IconButton(onPressed: (){},
                       icon: SvgPicture.asset('assets/icons/dribble.svg')),
                       Spacer()
                    ],
                    
                  ),
                 )


              ],
            ),
          ))
        ],
      )),
    );
  }
}
