import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_action_tuto/main.dart';

void main() {
  testWidgets('Form submission navigates to details and buttons work', (
    tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    // Enter first and last name
    await tester.enterText(find.byKey(const Key('firstNameField')), 'Jean');
    await tester.enterText(find.byKey(const Key('lastNameField')), 'Dupont');

    // Submit
    await tester.tap(find.byKey(const Key('submitButton')));
    await tester.pumpAndSettle();

    // Verify details displayed
    expect(find.textContaining('Prénom: Jean'), findsOneWidget);
    expect(find.textContaining('Nom: Dupont'), findsOneWidget);

    // Test increment button
    expect(find.byKey(const Key('counterText')), findsOneWidget);
    expect(find.textContaining('Compteur: 0'), findsOneWidget);
    await tester.tap(find.byKey(const Key('incrementButton')));
    await tester.pump();
    expect(find.textContaining('Compteur: 1'), findsOneWidget);

    // Test snackbar button (just trigger)
    await tester.tap(find.byKey(const Key('snackButton')));
    await tester.pump();
    expect(find.byType(SnackBar), findsOneWidget);

    // Test dialog button
    await tester.tap(find.byKey(const Key('dialogButton')));
    await tester.pumpAndSettle();
    expect(find.byType(AlertDialog), findsOneWidget);
    await tester.tap(find.text('Fermer'));
    await tester.pumpAndSettle();
  });
}
