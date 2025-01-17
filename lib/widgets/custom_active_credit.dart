import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_row_text.dart';

class CustomActiveCredit extends StatelessWidget {
  const CustomActiveCredit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Активный кредит',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
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
                  prefixText: 'Основной долг',
                  suffexText: '8000 ₽',
                  fontSize: 30,
                ),
              ),
              const CustomRowText(prefixText: 'Проценты', suffexText: '0 ₽'),
              const CustomRowText(
                prefixText: 'Номер договора',
                suffexText: '0726-4317339',
              ),
              const CustomRowText(
                  prefixText: 'Дата выдачи', suffexText: '26.07.2024'),
              const CustomRowText(
                  prefixText: 'Дата возврата', suffexText: '09.08.2024'),
            ],
          ),
        ),
      ),
    );
  }
}
