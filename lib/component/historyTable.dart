import 'package:dashboard_ui/config/responsive.dart';
import 'package:dashboard_ui/config/size_config.dart';
import 'package:dashboard_ui/data.dart';
import 'package:dashboard_ui/style/colors.dart';
import 'package:dashboard_ui/style/style.dart';
import 'package:flutter/material.dart';

class HistoryTable extends StatelessWidget {
  const HistoryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Responsive.isDesktop(context) ?Axis.vertical: Axis.horizontal,
      child: SizedBox(
        width: Responsive.isDesktop(context)?double.infinity: SizeConfig.screenWidth,
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: List.generate(
              transactionHistory.length,
              (index) => TableRow(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                              top: 10.0, bottom: 10, left: 20),
                          child: CircleAvatar(
                            radius: 17,
                            backgroundImage: NetworkImage(
                                transactionHistory[index]['avatar']!),
                          ),
                        ),
                        PrimaryText(text: transactionHistory[index]['label']!, size: 16, color: AppColors.secondary,),
                        PrimaryText(text: transactionHistory[index]['time']!, size: 16, color: AppColors.secondary,),
                        PrimaryText(text: transactionHistory[index]['amount']!, size: 16, color: AppColors.secondary,),
                        PrimaryText(text: transactionHistory[index]['status']!, size: 16, color: AppColors.secondary,)
                      ])),
        ),
      ),
    );
  }
}
