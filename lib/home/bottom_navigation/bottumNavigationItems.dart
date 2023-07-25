import 'package:flutter/material.dart';

class ButtomNavigationItems extends StatelessWidget {
  final String iconFileName;
  final String title;
  final String activeIconFileName;
  final Function() onTap;
  final bool isActive;

  const ButtomNavigationItems({
    super.key,
    required this.iconFileName,
    required this.title,
    required this.activeIconFileName,
    required this.onTap,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);

    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipRRect(
              child: Image.asset(
            'assets/img/icons/${isActive ? activeIconFileName : iconFileName}',
            width: 24,
            height: 24,
          )),
          const SizedBox(
            height: 4,
          ),
          Text(
            '$title',
            style: themeData.textTheme.bodySmall!.apply(
                color: isActive
                    ? themeData.colorScheme.primary
                    : themeData.textTheme.bodySmall!.color),
          )
        ]),
      ),
    );
  }
}
