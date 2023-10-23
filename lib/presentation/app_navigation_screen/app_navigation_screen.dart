import 'package:flutter/material.dart';
import 'package:kndege/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.loginScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.signupScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dashboardScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.drListScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.drDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.bookAnAppointmentScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.chatScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settignsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.pharmacyScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.drugDetailsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.articleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.cartScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.ambulanceScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.scheduleTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          loginText: "",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messageTabContainerScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String loginText,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  loginText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
