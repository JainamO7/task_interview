import 'package:flutter/material.dart';
import 'package:task_interview/utils/AppColors.dart';
class Homepageview extends StatelessWidget {
  const Homepageview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.cardColor,
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}