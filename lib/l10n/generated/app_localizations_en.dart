import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationEn extends AppLocalization {
  AppLocalizationEn([String locale = 'en']) : super(locale);

  @override
  String get helloText => 'HELLO TEXT THIS IS PACKAGE PAGE';

  @override
  String get titleText => 'HELLO TEXT THIS IS PACKAGE  Title Text';

  @override
  String get helloText2 => 'HELLO TEXT 2';
}
