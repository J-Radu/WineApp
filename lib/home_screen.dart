import 'package:flutter/material.dart';
import 'package:lab_2/utils/carrousel_data.dart';
import 'package:lab_2/widgets/wine_card.dart';
import 'package:lab_2/models/wine.dart';
import 'package:lab_2/widgets/app_header.dart';
import 'package:lab_2/widgets/wine_carrousel_card.dart';
import '../utils/static_data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              WineAppHeader(),
              SizedBox(height: 20),
              SizedBox(
                height: 220,
                child: ListView.separated(
                  itemCount: winesCarrouselStatic.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 2.0, right: 2.0),
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20);
                  },
                  itemBuilder: (context, index) {
                    return WineCategoryCard(wineCarrousel: winesCarrouselStatic[index]);
                  },
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wine',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF111827),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'view all',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.pink[300],
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: winesStatic.map((wine) {
                  return WineCard(wine: wine);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
