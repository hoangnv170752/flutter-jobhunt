import 'package:flutter/material.dart';
import 'package:jobhub/constants/app_constants.dart';
import 'package:jobhub/views/common/app_style.dart';
import 'package:jobhub/views/common/custom_outline_btn.dart';
import 'package:jobhub/views/common/height_spacer.dart';
import 'package:jobhub/views/common/reusable_text.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color(kLight.value),
        child: Column(
          children: [
            Image.asset("assets/images/page3.png"),
            const HeightSpacer(size: 20),
            ReusableText(
              text: "Welcome to JobHubt",
              style: appstyle(
                30,
                Color(kLight.value),
                FontWeight.w600,
              ),
            ),
            const HeightSpacer(size: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Data",
                textAlign: TextAlign.center,
                style: appstyle(
                  14,
                  Color(kLight.value),
                  FontWeight.normal,
                ),
              ),
            ),
            const HeightSpacer(size: 20),
            Row(
              children: [
                CustomOutlineBtn(
                  onTap: () {},
                  text: "Login",
                  width: width * 0.4,
                  height: hieght * 0.06,
                  color: Color(kLight.value),
                ),
                GestureDetector(
                  onTap: null,
                  child: Container(
                    width: width * 0.4,
                    height: hieght * 0.06,
                    color: Color(kLight.value),
                    child: Center(
                      child: ReusableText(
                        text: "Sign Up",
                        style: appstyle(
                          16,
                          Color(kLightBlue.value),
                          FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const HeightSpacer(size: 30),
            ReusableText(
              text: "Continue as guest",
              style: appstyle(
                16,
                Color(kLight.value),
                FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}
