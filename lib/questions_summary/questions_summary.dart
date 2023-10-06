import 'package:flutter/material.dart';
import 'package:adv_basic/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        // takes a single child that you can scroll one direction
        child: Column(
          children: summaryData.map((data) {
            return SummaryItem(data);
          },).toList(),
          // children: summaryData.map((data) {
          //   return Row(
          //     children: [
          //       Text(
          //         ((data['question_index'] as int) + 1).toString(),
          //       ),
          //       Expanded(
          //         // without this, column takes infinit amount of width
          //         child: Column(
          //           children: [
          //             Text(data['question'] as String),
          //             const SizedBox(
          //               height: 5,
          //             ),
          //             Text(data['user_answer'] as String),
          //             Text(data['correct_answer'] as String),
          //           ],
          //         ),
          //       ),
          //     ],
          //   );
          // }).toList(),
        ),
      ),
    );
  }
}
