import 'package:dashboard_ui/component/paymentListTile.dart';
import 'package:dashboard_ui/config/size_config.dart';
import 'package:dashboard_ui/data.dart';
import 'package:dashboard_ui/style/colors.dart';
import 'package:dashboard_ui/style/style.dart';
import 'package:flutter/material.dart';

class PaymentDetailsList extends StatelessWidget {
  const PaymentDetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: AppColors.iconGray,
                    blurRadius: 15.0,
                    offset: Offset(10.0, 15))
              ]),
          child: Image.asset('assets/image/card.png'),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Recent Activities',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '02 Mar 2021',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeHorizontal! * 2,
        ),
        Column(
          children: List.generate(recentActivities.length, (index) => PaymentListTile(
            icon: recentActivities[index]["icon"]!,
            label: recentActivities[index]["label"]!,
            amount: recentActivities[index]["amount"]!,
          )),
        ),
        SizedBox(
          height: SizeConfig.blockSizeHorizontal! * 5,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Upcoming Payments',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '02 Mar 2021',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            )
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeHorizontal! * 2,
        ),
        Column(
          children: List.generate(upcomingPayments.length, (index) => PaymentListTile(
            icon: upcomingPayments[index]["icon"]!,
            label: upcomingPayments[index]["label"]!,
            amount: upcomingPayments[index]["amount"]!,
          )),
        ),
         
      ],
    );
  }
}

