// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get maltboxd => 'Maltboxd';

  @override
  String get welcome_title => 'Et sted for øl.';

  @override
  String get welcome_description =>
      'Gennemse øl, udforsk bryggerier, og hold en smagsjournal.';

  @override
  String get next_pour_title => 'Din næste skænk vil blive husket.';

  @override
  String get next_pour_description =>
      'Hold dine øl noter samlet, genbesøg dem, og opdag mere fra bryggerierne bag dem';

  @override
  String get browse_button => 'Gennemse Maltboxd';
}
