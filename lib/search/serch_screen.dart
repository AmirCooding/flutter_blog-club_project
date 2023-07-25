import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: themeData.colorScheme.background.withOpacity(0),
        title: Text(
          'Search',
          style: themeData.textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 31, right: 31),
                    child: TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: themeData.colorScheme.surface),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              const Divider(),
              Row(
                children: [Text('Frequently Searched')],
              )
            ],
          ),
        ),
      ),
    );
  }
}
