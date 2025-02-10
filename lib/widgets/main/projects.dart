import 'package:flutter/material.dart';
import 'package:real_state/Responsev.dart';
import 'package:real_state/contains.dart';
import 'package:real_state/models/projects.dart';

import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: kDefaultPadding),
          child: Text(
            "Our Projects",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        SizedBox(height: kDefaultPadding),
        Responsive(desktop: 
        buildGridView(itemCount: 
        demoProjects.length,
         crossAxsitCount: 3,
          childAspectRatio: 0.75, itemBuilder: (context,index)=>
          ProjectCard(project: demoProjects[index]),
          )
        
        , tablet: buildGridView(itemCount: demoProjects.length,
         crossAxsitCount:MediaQuery.of(context).size.width < 900 ? 2:3 , 
         childAspectRatio: 0.75, 
         itemBuilder:(context,index) => 
         ProjectCard(project: demoProjects[index]),
          ),
          mobileLarge: buildGridView(itemCount: demoProjects.length,
           crossAxsitCount: 2, childAspectRatio: 0.75, itemBuilder: (context,index) =>
           ProjectCard(project: demoProjects[index])
           ) ,
           mobile: buildGridView(itemCount: demoProjects.length,
            crossAxsitCount: 1, childAspectRatio: 0.75, itemBuilder: 
            (context,index)=> ProjectCard(project: demoProjects[index])
            ),
          )
      ],
    );
  }

  GridView buildGridView({
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxsitCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder: itemBuilder);
  }
}
