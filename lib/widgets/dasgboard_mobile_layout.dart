import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_all_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CustomAllExpensesAndQuickInvoice(),
          SizedBox(height: 24),
          MyCardsAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
