import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_bottun.dart';
import 'package:tasks_app/widgets/custom_headline_text.dart';

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 209,
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomHeadlineText(text: 'Продление'),
              Center(
                child: CustomHeadlineText(
                  text: '10',
                  fontSize: 24,
                ),
              ),
              CustomButton(text: 'Продлить', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
