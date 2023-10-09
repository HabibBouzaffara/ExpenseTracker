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
      backgroundColor: const Color.fromARGB(255, 21, 3, 75),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 240,
            ),
            Image.asset(
              'assets/Expense.png',
              width: 250,
            ),
            const SizedBox(height: 50),
            const Text('Track my Expenses! \n With The Expense Tracker!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
                onPressed: () {
                  _startExp(context);
                },
                icon: const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.amber,
                ),
                label: const Text(
                  'Track my Expense!',
                  style: TextStyle(color: Colors.amber),
                ))
          ],
        ),
      ),
    );
  }
}
