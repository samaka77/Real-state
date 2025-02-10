
import 'package:flutter/material.dart';

import '../../contains.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1.23,
    child: Container(
      color: kSecondaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
       
        children: [
          Spacer(flex: 2,),
          Image(image: AssetImage('assets/images/logo.png'),
          width: 100,
          ),
          Spacer(flex: 2,),
          Text("Real State",
          style: Theme.of(context).textTheme.titleSmall,
          ),
      
          Text("Modern Home With \n greate interior design",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            height: 1.5,
          ),
          ),
          Spacer(flex: 2,)
        ],
      ),
    ),
    );
  }
}