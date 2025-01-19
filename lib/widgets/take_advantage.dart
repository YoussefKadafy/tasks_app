import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_bottun.dart';
import 'package:tasks_app/widgets/custom_row_text.dart';

class TakeAdvantage extends StatelessWidget {
  const TakeAdvantage({super.key});

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
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Воспользуйтесь',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black),
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffF4EAFF),
                      ),
                      width: double.infinity,
                      child: const CustomRowText(
                        prefixText: 'Сумма займа',
                        suffexText: 'до 25 000 ₽',
                        suffixFontSize: 24,
                      ),
                    ),
                    const CustomRowText(
                      prefixText: 'Проценты',
                      suffexText: '0,8%',
                    ),
                    CustomButton(
                      text: 'Получить',
                      onPressed: () {},
                      textColor: Colors.white,
                    ),
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
                  Color(0xffFFDBA5),
                  Color(0xffFFC97A),
                  Color(0xffFFB84E),
                  Color(0xffFF9E0F),
                ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
              ),
            ),
          ),
          Positioned(
            right: 22,
            top: -25,
            child: Image.asset(
              height: 97,
              width: 92,
              'assets/images/bank-building-with-coins-pink-background-online-banking-bank-transactions-service-moneysaving-bank-finance-financial-business-money-transaction-savings-concept-3d-render-illustration 1.png',
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            left: 20,
            top: 50,
            child: Text(
              'новым предложением!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}
