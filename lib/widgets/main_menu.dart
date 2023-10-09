import 'package:expense_tracker/main.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});
  void _startExp(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const Expenses()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkColorScheme.background,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Expense.png',
              width: 300,
              color: const Color.fromARGB(100, 53, 8, 177),
            ),
            const SizedBox(height: 80),
            const Text('Track my Expenses! \n With The Expense Tracker!'),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  _startExp(context);
                },
                icon: const Icon(Icons.arrow_right_alt),
                label: const Text('Track my Expense!'))
          ],
        ),
      ),
    );
  }
}
