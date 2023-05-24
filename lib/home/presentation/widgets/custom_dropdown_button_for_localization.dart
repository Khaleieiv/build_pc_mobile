
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

class CustomDropdownButtonForLocalization extends StatefulWidget {
  final String localFirstLanguage;
  final String localSecondLanguage;
  final String flagFirst;
  final String flagSecond;
  final String labelFirstLanguage;
  final String labelSecondLanguage;

  const CustomDropdownButtonForLocalization({
    Key? key,
    required this.localFirstLanguage,
    required this.localSecondLanguage,
    required this.flagFirst,
    required this.flagSecond,
    required this.labelFirstLanguage,
    required this.labelSecondLanguage,
  }) : super(key: key);

  @override
  State<CustomDropdownButtonForLocalization> createState() =>
      _CustomDropdownButtonForLocalizationState();
}

class _CustomDropdownButtonForLocalizationState
    extends State<CustomDropdownButtonForLocalization> {
  @override
  Widget build(BuildContext context) {
    Locale? _getNextLocale(BuildContext context) {
      final lang = EzLocalization.of(context)?.locale.languageCode;
      if (lang == widget.localSecondLanguage) {
        return Locale(widget.localFirstLanguage);
      } else if (lang == widget.localFirstLanguage) {
        return Locale(widget.localSecondLanguage);
      }

      return null;
    }

    final nextLocale = _getNextLocale(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton(
        underline: const SizedBox(),
        icon: const Icon(
          Icons.language_sharp,
          color: Colors.white,
        ),
        items: [
          DropdownMenuItem(
            value: Locale(widget.localSecondLanguage),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.flagFirst, //"🇺🇸",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(widget.labelFirstLanguage),
              ],
            ),
          ),
          DropdownMenuItem(
            value: Locale(widget.localFirstLanguage),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.flagSecond, //"🇺🇦",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(widget.labelSecondLanguage),
              ],
            ),
          ),
        ],
        onChanged: (v) => setState(() {
          EzLocalizationBuilder.of(context)?.changeLocale(nextLocale);
        }),
      ),
    );
  }
}
