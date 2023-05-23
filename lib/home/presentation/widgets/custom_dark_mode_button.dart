import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_provider.dart';
import 'package:build_pc_mobile/home/presentation/widgets/animation_trigger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';

class CustomDarkModeButton extends StatelessWidget {
  const CustomDarkModeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeProvider>(context);

    final animationsMap = {
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 350.ms,
            begin: const Offset(40.0, 0.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effects: [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.ms,
            duration: 350.ms,
            begin: const Offset(-40.0, 0.0),
          ),
        ],
      ),
    };

    const widthContainerForAreaButton = 80.0;
    const heightContainerForAreaButton = 40.0;

    const borderRadius = 20.0;

    final alignmentStartForDarkMode = themeChange.darkTheme ? -0.9 : 0.95;

    const sizeContainerForButton = 36.0;

    final fromSTEBStart = themeChange.darkTheme ? 8.0 : 0.0;
    final fromSTEBTop = themeChange.darkTheme ? 2.0 : 0.0;
    final fromSTEBEnd = themeChange.darkTheme ? 0.0 : 8.0;

    final sizeIcon = themeChange.darkTheme ? 24.0 : 20.0;

    final alignmentForButton = themeChange.darkTheme ? -0.9 : -0.85;

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            themeChange.darkTheme = !themeChange.darkTheme;
            SchedulerBinding.instance.addPostFrameCallback(
                  (_) async => themeChange.darkTheme
                  ? animationsMap['containerOnActionTriggerAnimation1']!
                  : animationsMap['containerOnActionTriggerAnimation2']!
                  .controller
                  ?.forward(from: 0.0),
            );
          },
          child: Container(
            width: widthContainerForAreaButton,
            height: heightContainerForAreaButton,
            decoration: BoxDecoration(
              color: themeChange.darkTheme
                  ? AppDarkColors.primaryBackgroundDarkColor
                  : AppLightColors.primaryBackgroundLightColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(
                    alignmentStartForDarkMode,
                    0.0,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                      fromSTEBStart,
                      fromSTEBTop,
                      fromSTEBEnd,
                      0.0,
                    ),
                    child: Icon(
                      themeChange.darkTheme
                          ? Icons.wb_sunny_rounded
                          : Icons.nights_stay,
                      color: AppColors.secondaryTextColor,
                      size: sizeIcon,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(
                    alignmentForButton,
                    0.0,
                  ),
                  child: Container(
                    width: sizeContainerForButton,
                    height: sizeContainerForButton,
                    decoration: BoxDecoration(
                      color: themeChange.darkTheme
                          ? AppDarkColors.secondaryBackgroundDarkColor
                          : AppColors.tertiaryColor,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x430B0D0F),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(borderRadius),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ).animateOnActionTrigger(
                  themeChange.darkTheme
                      ? animationsMap['containerOnActionTriggerAnimation1']!
                      : animationsMap['containerOnActionTriggerAnimation2']!,
                  hasBeenTriggered: themeChange.darkTheme,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
