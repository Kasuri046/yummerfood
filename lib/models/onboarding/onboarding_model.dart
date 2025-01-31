import 'package:flutter/material.dart';

class ImageListModel {
  final String image;
  final String text1;
  final String text2;
  final Color color;

  ImageListModel({
    required this.image,
    required this.text1,
    required this.text2,
    required this.color,
  });
}

List<ImageListModel> onboardingList = [
  ImageListModel(
    image: 'assets/onboarding/image-one.png',
    text1: 'Find The Restaurant!',
    text2: 'Qui ex aute ipsum duis. Incididunt adipisicing voluptate laborum.',
    color: Colors.white30,
  ),
  ImageListModel(
    image: 'assets/onboarding/image-two.png',
    text1: 'Choose Favorite Dishes!',
    text2: 'Qui ex aute ipsum duis. Incididunt adipisicing voluptate laborum.',
    color: Colors.white,
  ),
  ImageListModel(
    image: 'assets/onboarding/image-three.png',
    text1: 'Get Your Food Delivery!',
    text2: 'Qui ex aute ipsum duis. Incididunt adipisicing voluptate laborum.',
    color: Colors.white,
  ),
];
