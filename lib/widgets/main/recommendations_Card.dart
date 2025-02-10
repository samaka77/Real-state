
import 'package:flutter/material.dart';

import '../../contains.dart';
import '../../models/recomnd.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key, required this.recommendation,
  });
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // 80% من عرض الشاشة

      padding: EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(
              recommendation.name!,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            subtitle: Text(
              recommendation.source!,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
