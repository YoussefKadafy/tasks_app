import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_bottun.dart';
import 'package:tasks_app/widgets/custom_headline_text.dart';

class PayingLoan extends StatelessWidget {
  const PayingLoan({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomHeadlineText(text: 'Погасить кредит'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border:
                          Border.all(color: const Color(0xffF4EAFF), width: 3)),
                  child: const Center(
                    child: CustomHeadlineText(
                      text: '8000 ₽',
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              const CustomContainer(text: 'Минимальный платеж - 8000 ₽'),
              const SizedBox(
                height: 8,
              ),
              const CustomContainer(text: 'Полное погашение - 24000 ₽'),
              const SizedBox(
                height: 8,
              ),
              const CustomHeadlineText(
                text:
                    'К погашению возможна сумма не менее \nминимального платежа - 8000 ₽',
                fontSize: 12,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomButton(text: 'Оплатить', onPressed: () {}),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                child: Center(
                  child: Text(
                    '*Уважаемый клиент, оплату необходимо произвести в \n  течение 15 минут, после чего потребуется повторное \n нажатие на кнопку оплаты.',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key, required this.text, this.color = const Color(0xffFFEDD1)});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: color),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
