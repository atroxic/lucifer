import 'package:dotenv/dotenv.dart';

/// get environment variable value based on key
dynamic env(String key) {
  var env = DotEnv(includePlatformEnvironment: true)..load();

  String? value = env[key];

  if (value != null) {
    try {
      var numValue = num.tryParse(value);

      if (numValue != null && !numValue.isNaN) {
        return numValue;
      }
    } catch (_) {}
  }

  return value;
}
