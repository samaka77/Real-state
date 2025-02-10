import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state/contains.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text('Goals',
          style: Theme.of(context).textTheme.titleSmall,),
        ),
        BuildGoals(text: 'Planning stage'),
        BuildGoals(text: 'Development'),
        BuildGoals(text: 'Execution phase'),
        BuildGoals(text: 'New way to living'),
      ],
    );
  }

  Padding BuildGoals({required String text}) {
    return Padding(
        padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
        child: Row(
          children: [
            SvgPicture.asset('assets/icons/check.svg'),
            SizedBox(width: kDefaultPadding/2,),
            Text("Goals 1")
          ],
        ),
      );
  }
}