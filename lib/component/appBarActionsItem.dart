import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:dashboard_ui/style/colors.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/image/calendar.svg',
            width: 20,
          ),
        ),
        const SizedBox(width: 10.0,),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/image/ring.svg',
            width: 20,
          ),
        ),
        const SizedBox(width: 15.0,),
        const Row(
          children: [
            CircleAvatar(
              radius: 17,
              backgroundImage: NetworkImage('https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859'),
            ),
            Icon(Icons.arrow_drop_down_outlined,color: AppColors.black,)
          ],
        )
      ],
    );
  }
}
