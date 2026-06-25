import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:befound_application/main.dart';
import 'package:befound_application/ui/splash/splash_screen.dart';
import 'package:befound_application/ui/onboarding1/onboarding_screen1.dart';

void main() {
  testWidgets('Splash navigates to Onboarding Screen 1', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const BeFoundApp());

    // Verify splash screen shows logo
    expect(find.byType(SplashScreen), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);

    // Wait for 3 seconds + transition
    await tester.pump(const Duration(seconds: 3));
    await tester.pumpAndSettle();

    // Verify onboarding screen appears
    expect(find.byType(OnboardingScreen1), findsOneWidget);
    expect(find.text('Find What You Lost'), findsOneWidget);
  });
}
