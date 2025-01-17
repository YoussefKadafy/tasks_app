import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xffF4EAFF),
                radius: 37,
                child: Center(
                    child: Image.asset(
                  'assets/images/Frame 88.png',
                )),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Мои данные',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              )
            ],
          ),
          Center(
            child: Image.asset(
              'assets/images/Frame 67.png',
              width: 92,
            ),
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 32.5,
                backgroundColor: const Color(0xffF4EAFF),
                child: Center(
                  child: Image.asset('assets/images/Frame 86.png'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                'Настройки',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
