import 'package:clinic_app/common/constants/style.dart';
import 'package:clinic_app/common/helpers/responsiveness.dart';
import 'package:clinic_app/common/widgets/custom_text.dart';
import 'package:flutter/material.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left:14),
          color: Colors.orange,
          child: const Text('Logo'),
        ),
      ],
    )
        : IconButton(
            onPressed: () {
              key.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
    title: CustomText(text: 'Clinic',color: lightGrey,size: 20,weight: FontWeight.bold,),
    backgroundColor: Colors.transparent,
    iconTheme: IconThemeData(color: dark),
    elevation: 0,
  );
}
