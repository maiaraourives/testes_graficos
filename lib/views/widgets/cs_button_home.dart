import 'package:flutter/material.dart';

import 'cs_icon.dart';

class CsButtonHome extends StatelessWidget {
  const CsButtonHome({
    required this.title,
    required this.icon,
    required this.onTap,
    super.key,
  });

  final IconData? icon;
  final Function()? onTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  title,
                  style: const TextStyle(color: Colors.amber, fontSize: 30),
                ),
              ),
              const SizedBox(width: 20),
              CsIcon(
                icon: icon,
                size: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
