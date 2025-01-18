import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_bottun.dart';
import 'package:tasks_app/widgets/custom_row_text.dart';

class LoanApprovedCard extends StatelessWidget {
  const LoanApprovedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Color(0xff714C9F),
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Одобрен кредит у ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    const Text(
                      'наших партнеров',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffF4EAFF),
                      ),
                      width: double.infinity,
                      child: const CustomRowText(
                        prefixText: 'Сумма займа',
                        suffexText: '12000 ₽',
                        suffixFontSize: 24,
                        prefixFontSize: 18,
                      ),
                    ),
                    const CustomRowText(
                      prefixText: 'Проценты',
                      suffexText: '1344 ₽',
                      color: Colors.white,
                    ),
                    const CustomRowText(
                      color: Colors.white,
                      prefixText: 'Дата возврата',
                      suffexText: '09.08.2024',
                    ),
                    CustomButton(text: 'text', onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: -15,
            child: Container(
              height: 95,
              width: 95,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Colors.white,
                  Color(0xffD8C5F0),
                  Color(0xffCCB6E9),
                  Color(0xffC2A8E3),
                ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
              ),
            ),
          ),
          Positioned(
            right: 18,
            top: -30,
            child: Image.asset(
              height: 110,
              width: 100,
              'assets/images/Depositphotos_376582 1.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
