import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:build_pc_mobile/profile/presentation/widgets/custom_icon_button_route_page.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const heightContainer = 515.0;

    const fromSTEBStartButtonLogOut = 90.0;
    const fromSTEBEndButtonLogOut = 90.0;
    const fromSTEBBottomButtonLogOut = 20.0;
    const heightButtonLogOut = 50.0;
    const borderRadiusButtonLogOut = 25.0;
    const fontSizeButtonButtonLogOut = 18.0;

    const sizeContainer = 80.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.getString('profile.edit_profile.edit_profile'),
        ),
        backgroundColor: AppColors.primaryColor,
        leading: const CustomIconButtonRoutePage(
          icon: Icons.arrow_back_ios_new,
          sizeIcon: 20,
          routePage: RouteNames.homePage,
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: heightContainer,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Align(
                    child: Container(
                      width: sizeContainer,
                      height: sizeContainer,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/dark-mode-chat-xk2sj6/assets/ails754ngloi/uiAvatar@2x.png",
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizes.defaultPadding),
                  CustomTextFormField(
                    labelText: context.getString('profile.edit_profile.name'),
                    hintText: context.getString('profile.edit_profile.name'),
                    keyboardType: TextInputType.name,
                    checkSuffixIcon: false,
                  ),
                  CustomTextFormField(
                    labelText: context.getString('profile.edit_profile.login'),
                    hintText: context.getString('profile.edit_profile.login'),
                    keyboardType: TextInputType.name,
                    checkSuffixIcon: false,
                  ),
                  CustomTextFormField(
                    labelText:
                        context.getString('profile.edit_profile.password'),
                    hintText:
                        context.getString('profile.edit_profile.password'),
                    keyboardType: TextInputType.visiblePassword,
                    checkSuffixIcon: false,
                  ),
                  CustomTextFormField(
                    labelText: context.getString('profile.edit_profile.email'),
                    hintText: context.getString('profile.edit_profile.email'),
                    keyboardType: TextInputType.emailAddress,
                    checkSuffixIcon: false,
                  ),
                  const SizedBox(height: AppSizes.defaultPadding),
                  CustomButtonWidget(
                    fromSTEBStart: fromSTEBStartButtonLogOut,
                    fromSTEBTop: 0,
                    fromSTEBEnd: fromSTEBEndButtonLogOut,
                    fromSTEBBottom: fromSTEBBottomButtonLogOut,
                    heightContainer: heightButtonLogOut,
                    borderRadius: borderRadiusButtonLogOut,
                    routeName: RouteNames.loginPage,
                    nameButton:
                        context.getString('profile.edit_profile.save_changes'),
                    colorButton: AppLightColors.primaryBackgroundLightColor,
                    fontSizeButton: fontSizeButtonButtonLogOut,
                    colorTextButton: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
