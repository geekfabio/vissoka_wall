import 'package:flutter/material.dart';

class MyBottomTabs extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  final Function onPressed;

  const MyBottomTabs(
      {Key key, this.icon, this.text, this.isSelected, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 64.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
                size: 24.0, color: isSelected ? Colors.black : Colors.grey),
            SizedBox(height: 4.0),
            Text(
              "•",
              style: TextStyle(
                fontSize: 10.0,
                color: isSelected ? Colors.black : Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
