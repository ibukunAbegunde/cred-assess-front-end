import 'package:flutter/material.dart';

class tilesComponent extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback Ontap;

  const tilesComponent({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.Ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  icon,
                  width: 25,
                ),
              )
            ],
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Color(0xFF757575),
              fontSize: 12,
              fontWeight: FontWeight.w300,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
          horizontalTitleGap: 0,
          onTap: Ontap,
        ),
      ],
    );
  }
}

class loanComponent extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback Ontap;

  const loanComponent({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.Ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(
                    color: Color(0xFFBDBDBD),
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      icon,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Color(0xFF66666A),
              fontSize: 14,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w300,
              height: 1.60,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
          onTap: Ontap,
        ),
      ],
    );
  }
}
class loanComponentree extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final VoidCallback Ontap;

  const loanComponentree({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.Ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                  border: Border.all(
                    color: Color(0xFFBDBDBD),
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      icon,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Initial rate 3.99% ',
                style: TextStyle(
                  color: Color(0xFF66666A),
                  fontSize: 14,
                  fontFamily: 'Avenir',
                  fontWeight: FontWeight.w300,
                  height: 1.60,
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                        width: 7,
                        height: 7,
                        decoration: ShapeDecoration(
                          color: Color(0xFFBC9D21),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Text(
                      'Initial period 5 years',
                      style: TextStyle(
                        color: Color(0xFF66666A),
                        fontSize: 14,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.w300,
                        height: 1.60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 15,
          ),
          onTap: Ontap,
        ),
      ],
    );
  }
}