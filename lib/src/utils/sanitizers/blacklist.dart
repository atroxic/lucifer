///
/// Remove characters that appear in the blacklist.
///
/// The characters are used in a RegExp and so you will need to escape
/// some chars.
///
String blacklist(data, String chars) {
  if (data is! String) {
    return data;
  }

  // ignore: prefer_interpolation_to_compose_strings
  RegExp pattern = RegExp('[' + chars + ']+');
  return data.replaceAll(pattern, '');
}
