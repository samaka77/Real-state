import 'package:flutter/material.dart';
import 'package:real_state/contains.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildContactInfo(
        title: 'Address',
        text: 'Station Street'
      ),
       BuildContactInfo(
        title: 'Country',
        text: 'Egypt'
      ),
       BuildContactInfo(
        title: 'Email',
        text: 'email@website.com'
      ),
       BuildContactInfo(
        title: 'Mobile',
        text: '01227827598'
      ),
       BuildContactInfo(
        title: 'WebSite',
        text: 'RealState.com'
      ),
      
      
      
      
      ],
    );
  }

  Padding BuildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding/2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title",
            style: TextStyle(color: Colors.white),
          ),
          Text(text)
        ],
      ),
    );
  }
}
