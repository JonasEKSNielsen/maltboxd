// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get maltboxd => 'Maltboxd';

  @override
  String get welcome_title => 'A place for beer.';

  @override
  String get welcome_description => 'Browse beers and explore new breweries';

  @override
  String get next_pour_title => 'Your next pour will be remembered.';

  @override
  String get next_pour_description =>
      'Keep your beer notes in one place, revisit them, and discover the more from the breweries behind them.';

  @override
  String get browse_button => 'Browse Maltboxd';
}
