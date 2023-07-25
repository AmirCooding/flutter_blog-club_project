import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../models/category.dart';

class CategoryItemes extends StatelessWidget {
  final Category category;
  // These two parameters for padding to the first and last container of Categories
  final double left;
  final double right;

  const CategoryItemes({
    super.key,
    required this.category,
    required this.left,
    required this.right,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(left, 0, right, 0),
      child: Stack(
        children: [
          Positioned.fill(
              top: 100,
              left: 65,
              right: 65,
              bottom: 34,
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(blurRadius: 20, color: Color(0xff0D253C))
                ]),
              )),
          Positioned.fill(
            child: Container(
                margin: const EdgeInsets.fromLTRB(13, 0, 0, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.red,
                ),
                foregroundDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [Colors.transparent, Color(0xaa0D253C)])),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(32),
                    child: Image.asset(
                      'assets/img/posts/large/${category.imageFileName}',
                      fit: BoxFit.cover,
                    ))),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            child: Text(category.title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .apply(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
