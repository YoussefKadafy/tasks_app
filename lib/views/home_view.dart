import 'package:flutter/material.dart';
import 'package:tasks_app/widgets/custom_active_credit.dart';
import 'package:tasks_app/widgets/custom_app_bar.dart';
import 'package:tasks_app/widgets/loan_approved.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 8,
                child: SizedBox(
                  height: 60,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        'Иванов Иван Иванович',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            CustomActiveCredit(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: LoanApprovedCard(),
            ),
          ],
        ),
      ),
    );
  }
}
