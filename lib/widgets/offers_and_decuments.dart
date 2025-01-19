import 'package:flutter/material.dart';

class OffersAndDocuments extends StatelessWidget {
  const OffersAndDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: SizedBox(
        width: double.infinity,
        height: 120,
        child: Row(
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CustomCard(
                    color: const Color(0xffF4EAFF),
                    text: 'Предложения',
                  ),
                  Positioned(
                    right: 1,
                    top: -7.62,
                    child: Image.asset(
                      'assets/images/ыыа 1.png',
                      width: 68.48,
                      height: 87.08,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  CustomCard(
                    color: const Color(0xffFFEDD1),
                    text: 'Документы',
                  ),
                  Positioned(
                    right: 1,
                    top: -4,
                    child: Image.asset(
                      'assets/images/passport-travel-document-3d-illustration 1.png',
                      width: 83,
                      height: 99,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.text,
    required this.color,
  });

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, right: 40),
          child: Text(
            text,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
