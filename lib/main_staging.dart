import 'package:cerati/app/app.dart';
import 'package:cerati/bootstrap.dart';
import 'package:logger/logger.dart';

void main() {
  bootstrap(() => const App());
}

Logger logger = Logger();
