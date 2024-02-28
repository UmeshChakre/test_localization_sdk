// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class Localizable {
//   Localizable();

//   static Localizable? _current;

//   static Localizable get current {
//     assert(_current != null,
//         'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
//     return _current!;
//   }

//   static List<Locale> get supportedLocales {
//     return [
//       const Locale.fromSubtags(languageCode: 'en'),
//       const Locale.fromSubtags(languageCode: 'nl'),
//     ];
//   }


//   static Future<Localizable> load(Locale locale) {
//     final name = (locale.countryCode?.isEmpty ?? false)
//         ? locale.languageCode
//         : locale.toString();
//     final localeName = Intl.canonicalizedLocale(name);
//     return initializeMessages(localeName).then((_) {
//       Intl.defaultLocale = localeName;
//       final instance = Localizable();
//       Localizable._current = instance;

//       return instance;
//     });
//   }

//   static const delegate = AppLocalizationDelegate();
// }

// class AppLocalizationDelegate extends LocalizationsDelegate<Localizable> {
//   const AppLocalizationDelegate();

//   List<Locale> get supportedLocales {
//     return const <Locale>[
//       Locale.fromSubtags(languageCode: 'en'),
//       Locale.fromSubtags(languageCode: 'zh'),
//     ];
//   }

//   @override
//   bool isSupported(Locale locale) => _isSupported(locale);
//   @override
//   Future<Localizable> load(Locale locale) => Localizable.load(locale);
//   @override
//   bool shouldReload(AppLocalizationDelegate old) => false;

//   bool _isSupported(Locale locale) {
//     for (var supportedLocale in supportedLocales) {
//       if (supportedLocale.languageCode == locale.languageCode) {
//         return true;
//       }
//     }
//     return false;
//   }
// }
