import 'dart:math';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'design_elemets.dart';

class AllURLs extends StatelessWidget {
  const AllURLs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              width: 25,
              height: 25,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ))
        ],
      ),
      Center(
        child: Text(
          "Credit",
          style: songtitleStyle,
        ),
      ),
    ]);
  }
}

class CustomChips extends StatelessWidget {
  CustomChips({
    super.key,
  });
  String url = "www.google.com";

  //get random color
  T getRandomElement<T>(List<T> list) {
    final random = new Random();
    var i = random.nextInt(list.length);
    return list[i];
  }

//fn for url
  Future<void> _launchUrl() async {
    if (!await launchUrl(url as Uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        // width: 150,
        // height: 50,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: getRandomElement(colors)),
        child: Text(
          "Yellow",
          overflow: TextOverflow.clip,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
