import 'package:flutter/material.dart';

class tilesComponent extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback Ontap;
  const tilesComponent({required this.icon, required this.title, required this.subtitle, required this.Ontap, });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(icon, width: 25,),
              )
            ],
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Icon(Icons.arrow_forward_ios, size: 15,),
          horizontalTitleGap:0,
          onTap: Ontap,
        ),
        Divider(indent: 55,),
      ],
    );
  }
}
