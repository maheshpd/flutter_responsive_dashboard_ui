import 'package:dashboard_ui/component/appBarActionsItem.dart';
import 'package:dashboard_ui/component/barchart_component.dart';
import 'package:dashboard_ui/component/headers.dart';
import 'package:dashboard_ui/component/historyTable.dart';
import 'package:dashboard_ui/component/infoCard.dart';
import 'package:dashboard_ui/component/paymentdetailList.dart';
import 'package:dashboard_ui/component/sidemenu.dart';
import 'package:dashboard_ui/config/responsive.dart';
import 'package:dashboard_ui/config/size_config.dart';
import 'package:dashboard_ui/style/colors.dart';
import 'package:dashboard_ui/style/style.dart';
import 'package:flutter/material.dart';


class Dashboard extends StatelessWidget {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _drawerKey,
      drawer: const SizedBox(
        width: 100,
        child: SideMenu(),
      ),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                onPressed: () {
                  _drawerKey.currentState?.openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: AppColors.black,
                ),
              ),
              actions: const [
                AppBarActionItems()
              ],
            )
          : const PreferredSize(preferredSize: Size.zero, child: SizedBox()),
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isDesktop(context))
            const Expanded(
              flex: 1,
              child: SideMenu(),
            ),
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight,
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                    vertical: 30.0, horizontal: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Header(),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 4,
                    ),
                    SizedBox(
                      width: SizeConfig.screenWidth,
                      child: const Wrap(
                        runSpacing: 20.0,
                        spacing: 20.0,
                        alignment: WrapAlignment.spaceBetween,
                        children: [
                          InfoCard(
                            icon: 'assets/image/credit-card.svg',
                            label: 'Transfer via \n Card number',
                            amount: '\$1200',
                          ),
                          InfoCard(
                            icon: 'assets/image/transfer.svg',
                            label: 'Transfer via \n Online Banks',
                            amount: '\$150',
                          ),
                          InfoCard(
                            icon: 'assets/image/bank.svg',
                            label: 'Transfer \n Same Bank',
                            amount: '\$1500',
                          ),
                          InfoCard(
                            icon: 'assets/image/invoice.svg',
                            label: 'Transfer to \n Other Bank',
                            amount: '\$1500',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 4,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            PrimaryText(
                              text: 'Balance',
                              size: 16,
                              color: AppColors.secondary,
                            ),
                            PrimaryText(
                              text: '\$1500',
                              size: 30,
                              fontWeight: FontWeight.w800,
                            )
                          ],
                        ),
                        PrimaryText(
                          text: 'Past 30 DAYS',
                          size: 16,
                          color: AppColors.secondary,
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 3,
                    ),
                    Container(
                      height: 180,
                      child: const BarCharComponent(),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 5,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PrimaryText(
                          text: 'History',
                          size: 30,
                          fontWeight: FontWeight.w600,
                        ),
                        PrimaryText(
                          text: 'Transaction of last 6 months',
                          size: 16,
                          color: AppColors.secondary,
                        )
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 3,
                    ),
                    const HistoryTable(),
                    if(!Responsive.isDesktop(context))
                    const PaymentDetailsList()
                  ],
                ),
              ),
            ),
          ),
          if(Responsive.isDesktop(context))
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight,
              color: AppColors.secondaryBg,
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 30.0),
              child: const SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: Column(
                    children: [AppBarActionItems(), PaymentDetailsList()],
                  ),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
