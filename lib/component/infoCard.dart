import 'package:dashboard_ui/config/responsive.dart';
import 'package:dashboard_ui/config/size_config.dart';
import 'package:dashboard_ui/style/colors.dart';
import 'package:dashboard_ui/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoCard extends StatelessWidget {
  final String? icon;
  final String? label;
  final String? amount;
  const InfoCard({
    super.key, this.icon, this.label, this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:  BoxConstraints(minWidth: Responsive.isDesktop(context) ?  200: 160),
      padding:  EdgeInsets.only(top: 20, left: 20, bottom: 20, right: Responsive.isDesktop(context)?40:20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon!,
            width: 35,
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 2,
          ),
          PrimaryText(
            text: label!,
            color: AppColors.secondary,
            size: 16.0,
          ),
          PrimaryText(
            text: amount!,
            fontWeight: FontWeight.w700,
            size: 18.0,
          )
        ],
      ),
    );
  }
}
