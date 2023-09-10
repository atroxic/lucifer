import 'dart:io';

import 'package:lucifer/lucifer.dart';
import '../utils/path.dart';

///
/// Middleware to handle static content.
///
Callback static(String directory) {
  return (Req req, Res res) async {
    final dir = cleanPath(directory);
    final path = cleanPath(req.uriString);
    final file = File('$dir/$path');

    if (file.existsSync()) {
      await res.sendFile(file);
    }

    print('Got here');
  };
}
