import 'package:cerati/app/app.dart';
import 'package:cerati/injection.config.dart';
import 'package:cerati/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() => getIt.init(environment: Env.dev));
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byKey(const Key('homePage')), findsOneWidget);
    });
  });
}
