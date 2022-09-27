import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'hi', 'fr', 'ta'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? hiText = '',
    String? frText = '',
    String? taText = '',
  }) =>
      [enText, esText, hiText, frText, taText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginPage
  {
    'gtswce1b': {
      'en': 'Log-In',
      'es': 'Acceso',
      'fr': 'Connexion',
      'hi': 'लॉग इन करें',
      'ta': 'உள்நுழைய',
    },
    'af2w9ssa': {
      'en': 'Email-Id',
      'es': 'Identificación de correo',
      'fr': 'Email-Id',
      'hi': 'ईमेल आईडी',
      'ta': 'மின்னஞ்சல் முகவரி',
    },
    'rz8v6v9n': {
      'en': 'Password',
      'es': 'Clave',
      'fr': 'Mot de passe',
      'hi': 'पासवर्ड',
      'ta': 'கடவுச்சொல்',
    },
    'dp05nx9n': {
      'en': 'Submit',
      'es': 'Enviar',
      'fr': 'Soumettre',
      'hi': 'प्रस्तुत करना',
      'ta': 'சமர்ப்பிக்கவும்',
    },
    '4ee6jc62': {
      'en': 'OR',
      'es': 'O',
      'fr': 'OU',
      'hi': 'या',
      'ta': 'அல்லது',
    },
    'dkhgvax8': {
      'en': 'Google Sign-In',
      'es': 'Inicio de sesión de Google',
      'fr': 'Connexion Google',
      'hi': 'गूगल साइन-इन',
      'ta': 'Google உள்நுழைவு',
    },
    'ktiac3kz': {
      'en': 'Facebook Sign-In',
      'es': 'Inicio de sesión en Facebook',
      'fr': 'Connexion Facebook',
      'hi': 'फेसबुक साइन इन',
      'ta': 'Facebook உள்நுழைவு',
    },
    '1kfaanb1': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // ForgotPassword
  {
    'n7nh2goj': {
      'en': 'Forgot Password',
      'es': 'Has olvidado tu contraseña',
      'fr': 'Mot de passe oublié',
      'hi': 'पासवर्ड भूल गए',
      'ta': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா',
    },
    'sz6paqj5': {
      'en': 'Email-Id',
      'es': 'Identificación de correo',
      'fr': 'Email-Id',
      'hi': 'ईमेल आईडी',
      'ta': 'மின்னஞ்சல் முகவரி',
    },
    '1gg0lnsw': {
      'en': 'Submit',
      'es': 'Enviar',
      'fr': 'Soumettre',
      'hi': 'प्रस्तुत करना',
      'ta': 'சமர்ப்பிக்கவும்',
    },
    '9r6bobum': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // SignupPage
  {
    'luyf7gxs': {
      'en': 'Sign-Up',
      'es': 'Inscribirse',
      'fr': 'S&#39;inscrire',
      'hi': 'साइन अप करें',
      'ta': 'பதிவு செய்யவும்',
    },
    '85bg31fa': {
      'en': 'Name',
      'es': 'Nombre',
      'fr': 'Nom',
      'hi': 'नाम',
      'ta': 'பெயர்',
    },
    'zdysvuky': {
      'en': 'Email-Id',
      'es': 'Identificación de correo',
      'fr': 'Email-Id',
      'hi': 'ईमेल आईडी',
      'ta': 'மின்னஞ்சல் முகவரி',
    },
    'vvlneoc3': {
      'en': 'Password',
      'es': 'Clave',
      'fr': 'Mot de passe',
      'hi': 'पासवर्ड',
      'ta': 'கடவுச்சொல்',
    },
    'w96ht1ly': {
      'en': 'Submit',
      'es': 'Enviar',
      'fr': 'Soumettre',
      'hi': 'प्रस्तुत करना',
      'ta': 'சமர்ப்பிக்கவும்',
    },
    '5gghj5u3': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // RulesPage
  {
    'o34fbm94': {
      'en': 'Rules',
      'es': 'Normas',
      'fr': 'Règles',
      'hi': 'नियम',
      'ta': 'விதிகள்',
    },
    'hjx7e96b': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // EntryPage
  {
    'ynazl6qj': {
      'en': 'Log-In',
      'es': 'Acceso',
      'fr': 'Connexion',
      'hi': 'लॉग इन करें',
      'ta': 'உள்நுழைய',
    },
    'cntutceo': {
      'en': 'Sign-Up',
      'es': 'Inscribirse',
      'fr': 'S&#39;inscrire',
      'hi': 'साइन अप करें',
      'ta': 'பதிவு செய்யவும்',
    },
    '5gpnhcdz': {
      'en': 'Forgot Password',
      'es': 'Has olvidado tu contraseña',
      'fr': 'Mot de passe oublié',
      'hi': 'पासवर्ड भूल गए',
      'ta': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா',
    },
    'vqlpkh5m': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // TransitionPage
  {
    '2gl6jtbr': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // MainPage
  {
    '5w72fdsi': {
      'en': 'Choose Player Count ',
      'es': 'Elija el número de jugadores',
      'fr': 'Choisissez le nombre de joueurs',
      'hi': 'प्लेयर काउंट चुनें',
      'ta': 'வீரர்களின் எண்ணிக்கையைத் தேர்ந்தெடுக்கவும்',
    },
    'r59p8p43': {
      'en': '2P',
      'es': '2P',
      'fr': '2P',
      'hi': '2पी',
      'ta': '2P',
    },
    'h9sl740h': {
      'en': '3P',
      'es': '3P',
      'fr': '3P',
      'hi': '3पी',
      'ta': '3P',
    },
    'lb7h2c1a': {
      'en': '4P',
      'es': '4P',
      'fr': '4P',
      'hi': '4पी',
      'ta': '4P',
    },
    'kgj2xhld': {
      'en': 'Rules',
      'es': 'Normas',
      'fr': 'Règles',
      'hi': 'नियम',
      'ta': 'விதிகள்',
    },
    '3rswq87e': {
      'en': 'Share',
      'es': 'Cuota',
      'fr': 'Partager',
      'hi': 'शेयर करना',
      'ta': 'பகிர்',
    },
    'jzz2x2v5': {
      'en': 'Language Change',
      'es': 'Cambio de idioma',
      'fr': 'Changement de langue',
      'hi': 'भाषा परिवर्तन',
      'ta': 'மொழி மாற்றம்',
    },
    'o3grxy29': {
      'en': 'Logout',
      'es': 'Cerrar sesión',
      'fr': 'Se déconnecter',
      'hi': 'लॉग आउट',
      'ta': 'வெளியேறு',
    },
    'phvjuh3i': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // PreEntryPage
  {
    '0pzrlszv': {
      'en': 'Welcome to Snake-Ladder-Trivia \nGame . . . .',
      'es': 'Bienvenido al juego Snake-Ladder-Trivia. . . .',
      'fr': 'Bienvenue dans le jeu Snake-Ladder-Trivia. . . .',
      'hi': 'सांप-सीढ़ी-सामान्य ज्ञान खेल में आपका स्वागत है। . . .',
      'ta': 'ஸ்னேக்-லேடர்-ட்ரிவியா கேமுக்கு வரவேற்கிறோம். . . .',
    },
    'qfqty6ny': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // GameCompletePage
  {
    'bsxu738c': {
      'en': 'Winners List',
      'es': 'Lista de ganadores',
      'fr': 'Liste des gagnants',
      'hi': 'विजेताओं की सूची',
      'ta': 'வெற்றியாளர்கள் பட்டியல்',
    },
    'hos3ww7w': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // GamePage
  {
    'j9g0b8nu': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // LanguageChange
  {
    'a1xzip65': {
      'en': 'Choose Language ',
      'es': 'Elige lengua',
      'fr': 'Choisissez la langue',
      'hi': 'भाषा चुनें',
      'ta': 'மொழியைத் தேர்ந்தெடுக்கவும்',
    },
    '7qyfaoaj': {
      'en': 'Option 1',
      'es': 'Opción 1',
      'fr': 'Option 1',
      'hi': 'विकल्प 1',
      'ta': 'விருப்பம் 1',
    },
    '7phzh3bo': {
      'en': 'Submit',
      'es': 'Has olvidado tu contraseña',
      'fr': 'Mot de passe oublié',
      'hi': 'पासवर्ड भूल गए',
      'ta': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா',
    },
    '1mm84hwe': {
      'en': 'Home',
      'es': 'Hogar',
      'fr': 'Maison',
      'hi': 'घर',
      'ta': 'வீடு',
    },
  },
  // HowToPlay
  {
    'g173mj9w': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
  },
  // Miscellaneous
  {
    'kpo3q0m9': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    '38r48lt9': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    '178g24x7': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'ib46vxmh': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'nqnkdw6t': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'lo0rzl97': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'u0768t8k': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'bv2oybl9': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    '1uzapgxh': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    '77pnq7pk': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'sltrjqhi': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'gny0r391': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    '5a9nut0j': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'ijhgmdfu': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    '4i43eqcb': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'frhly01s': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    '3nwfk0ds': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'm4hosi8q': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'mqr1g60b': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
    'e120h3d0': {
      'en': '',
      'es': '',
      'fr': '',
      'hi': '',
      'ta': '',
    },
  },
].reduce((a, b) => a..addAll(b));
