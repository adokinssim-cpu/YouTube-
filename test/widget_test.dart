import 'package:flutter_test/flutter_test.dart';
import 'package:youtube/main.dart';

void main() {
  testWidgets('YouTube Clone démarre correctement', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const YouTubeApp());

    expect(find.text('Tous'), findsOneWidget);
  });
}