import 'package:flutter_test/flutter_test.dart';
import 'package:profil_diri/main.dart'; // ganti sesuai dengan nama project kamu

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const Home());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // You can add more interaction tests here jika diperlukan
  });
}
