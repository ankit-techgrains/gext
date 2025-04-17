import 'package:getx/constant/localel.dart';

class AppValidator {
  static final RegExp _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  static String? email(String? value, {String emptyMessage = LabelConstants.emailEmptyMessage, String invalidMessage = LabelConstants.emailValidMessage}) {
    if (value == null || value.isEmpty) return emptyMessage;
    if (!_emailRegex.hasMatch(value)) return invalidMessage;
    return null;
  }

  static String? password(
    String? value, {
    String emptyMessage = LabelConstants.passwordEmptyMessage,
    String invalidMessage = LabelConstants.passwordValidMessage,
    int minLength = 6,
  }) {
    if (value == null || value.isEmpty) return emptyMessage;
    if (value.length < minLength) return invalidMessage;
    return null;
  }

  static String? notEmpty(String? value, {String emptyMessage = 'This field is required', bool trim = true}) {
    final content = trim ? value?.trim() : value;
    if (content == null || content.isEmpty) return emptyMessage;
    return null;
  }
}
