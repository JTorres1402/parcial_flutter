// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "button": MessageLookupByLibrary.simpleMessage("Calculate"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "error": MessageLookupByLibrary.simpleMessage("Error"),
        "home": MessageLookupByLibrary.simpleMessage("Homepage"),
        "input": MessageLookupByLibrary.simpleMessage(
            "Enter the numbers separated by commas"),
        "inputGene": MessageLookupByLibrary.simpleMessage(
            "Enter the amount of number you want"),
        "labelError": MessageLookupByLibrary.simpleMessage(
            "Error, please enter valid values"),
        "labelrb1":
            MessageLookupByLibrary.simpleMessage("Even number quantity"),
        "labelrb2": MessageLookupByLibrary.simpleMessage("Pair numbers"),
        "labelrb3": MessageLookupByLibrary.simpleMessage("Sum of numbers"),
        "menu": MessageLookupByLibrary.simpleMessage("Menu"),
        "menu1":
            MessageLookupByLibrary.simpleMessage("Generate random numbers"),
        "menu2": MessageLookupByLibrary.simpleMessage("Delete numbers"),
        "menu3": MessageLookupByLibrary.simpleMessage("Mean of the numbers"),
        "menu4": MessageLookupByLibrary.simpleMessage("Order the numbers"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "rbutton1": MessageLookupByLibrary.simpleMessage(
            "Calculate how many even numbers there are"),
        "rbutton2": MessageLookupByLibrary.simpleMessage("Remove odd numbers"),
        "rbutton3": MessageLookupByLibrary.simpleMessage("Add the numbers")
      };
}
