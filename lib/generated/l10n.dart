// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Labels {
  Labels();

  static Labels? _current;

  static Labels get current {
    assert(_current != null,
        'No instance of Labels was loaded. Try to initialize the Labels delegate before accessing Labels.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Labels> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Labels();
      Labels._current = instance;

      return instance;
    });
  }

  static Labels of(BuildContext context) {
    final instance = Labels.maybeOf(context);
    assert(instance != null,
        'No instance of Labels present in the widget tree. Did you add Labels.delegate in localizationsDelegates?');
    return instance!;
  }

  static Labels? maybeOf(BuildContext context) {
    return Localizations.of<Labels>(context, Labels);
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }

  /// `Generate random numbers`
  String get menu1 {
    return Intl.message(
      'Generate random numbers',
      name: 'menu1',
      desc: '',
      args: [],
    );
  }

  /// `Delete numbers`
  String get menu2 {
    return Intl.message(
      'Delete numbers',
      name: 'menu2',
      desc: '',
      args: [],
    );
  }

  /// `Mean of the numbers`
  String get menu3 {
    return Intl.message(
      'Mean of the numbers',
      name: 'menu3',
      desc: '',
      args: [],
    );
  }

  /// `Order the numbers`
  String get menu4 {
    return Intl.message(
      'Order the numbers',
      name: 'menu4',
      desc: '',
      args: [],
    );
  }

  /// `Homepage`
  String get home {
    return Intl.message(
      'Homepage',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Enter the numbers separated by commas`
  String get input {
    return Intl.message(
      'Enter the numbers separated by commas',
      name: 'input',
      desc: '',
      args: [],
    );
  }

  /// `Enter the amount of number you want`
  String get inputGene {
    return Intl.message(
      'Enter the amount of number you want',
      name: 'inputGene',
      desc: '',
      args: [],
    );
  }

  /// `Error, please enter valid values`
  String get labelError {
    return Intl.message(
      'Error, please enter valid values',
      name: 'labelError',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Calculate how many even numbers there are`
  String get rbutton1 {
    return Intl.message(
      'Calculate how many even numbers there are',
      name: 'rbutton1',
      desc: '',
      args: [],
    );
  }

  /// `Remove odd numbers`
  String get rbutton2 {
    return Intl.message(
      'Remove odd numbers',
      name: 'rbutton2',
      desc: '',
      args: [],
    );
  }

  /// `Add the numbers`
  String get rbutton3 {
    return Intl.message(
      'Add the numbers',
      name: 'rbutton3',
      desc: '',
      args: [],
    );
  }

  /// `Calculate`
  String get button {
    return Intl.message(
      'Calculate',
      name: 'button',
      desc: '',
      args: [],
    );
  }

  /// `Even number quantity`
  String get labelrb1 {
    return Intl.message(
      'Even number quantity',
      name: 'labelrb1',
      desc: '',
      args: [],
    );
  }

  /// `Pair numbers`
  String get labelrb2 {
    return Intl.message(
      'Pair numbers',
      name: 'labelrb2',
      desc: '',
      args: [],
    );
  }

  /// `Sum of numbers`
  String get labelrb3 {
    return Intl.message(
      'Sum of numbers',
      name: 'labelrb3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Labels> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Labels> load(Locale locale) => Labels.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
