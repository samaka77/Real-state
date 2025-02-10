import 'package:flutter/material.dart';
import 'package:real_state/contains.dart';
import 'package:real_state/models/recomnd.dart';

import 'recommendations_Card.dart';



class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Client Recommendation",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
            child: Row(
              children: List.generate(
                  demoRecommendations.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: kDefaultPadding),
                        child: RecommendationCard(
                          recommendation: demoRecommendations[index],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
