import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

// class MockAuthNotifier extends Mock implements AuthNotifier {}
//
// void main() {
//   group('LoginForm', () {
//     late MockAuthNotifier mockAuthNotifier;
//
//     setUp(() {
//       mockAuthNotifier = MockAuthNotifier();
//     });
//
//     testWidgets('enableSignInButton should return true when both fields are not empty', (WidgetTester tester) async {
//       await tester.pumpWidget(
//         MaterialApp(
//           home: ChangeNotifierProvider<AuthNotifier>.value(
//             value: mockAuthNotifier,
//             child: const LoginForm(),
//           ),
//         ),
//       );
//
//       final usernameField = find.byKey(const Key('usernameField'));
//       final passwordField = find.byKey(const Key('passwordField'));
//
//       await tester.enterText(usernameField, 'testuser');
//       await tester.enterText(passwordField, 'testpassword');
//
//       final formWidget = tester.widget<LoginForm>(find.byType(LoginForm));
//       final enableSignInButton = formWidget.key;
//
//       expect(enableSignInButton, true);
//     });
//
//     testWidgets('enableSignInButton should return false when either field is empty', (WidgetTester tester) async {
//       await tester.pumpWidget(
//         MaterialApp(
//           home: ChangeNotifierProvider<AuthNotifier>.value(
//             value: mockAuthNotifier,
//             child: const LoginForm(),
//           ),
//         ),
//       );
//
//       final usernameField = find.byKey(const Key('usernameField'));
//       final passwordField = find.byKey(const Key('passwordField'));
//
//       await tester.enterText(usernameField, 'testuser');
//       await tester.enterText(passwordField, '');
//
//       final formWidget = tester.widget<LoginForm>(find.byType(LoginForm));
//       final enableSignInButton = formWidget.key;
//
//       expect(enableSignInButton, false);
//     });
//
//     testWidgets('loginButtonPressed should call signInWithEmail on AuthNotifier with correct parameters', (WidgetTester tester) async {
//       await tester.pumpWidget(
//         MaterialApp(
//           home: ChangeNotifierProvider<AuthNotifier>.value(
//             value: mockAuthNotifier,
//             child: const LoginForm(),
//           ),
//         ),
//       );
//
//       final usernameField = find.byKey(const Key('usernameField'));
//       final passwordField = find.byKey(const Key('passwordField'));
//
//       await tester.enterText(usernameField, 'testuser');
//       await tester.enterText(passwordField, 'testpassword');
//
//       final formWidget = tester.widget<LoginForm>(find.byType(LoginForm));
//
//       await formWidget.key;
//
//       verify(mockAuthNotifier.signInWithEmail('testuser', 'testpassword')).called(1);
//     });
//
//     testWidgets('loginButtonPressed should show error dialog when signInWithEmail throws an error', (WidgetTester tester) async {
//       when(mockAuthNotifier.signInWithEmail("", "")).thenThrow('Error');
//
//       await tester.pumpWidget(
//         MaterialApp(
//           home: ChangeNotifierProvider<AuthNotifier>.value(
//             value: mockAuthNotifier,
//             child: const LoginForm(),
//           ),
//         ),
//       );
//
//       final usernameField = find.byKey(const Key('usernameField'));
//       final passwordField = find.byKey(const Key('passwordField'));
//
//       await tester.enterText(usernameField, 'testuser');
//       await tester.enterText(passwordField, 'testpassword');
//
//       final formWidget = tester.widget<LoginForm>(find.byType(LoginForm));
//
//       await formWidget.key;
//
//       // Verify that the error dialog is shown
//       expect(find.text('Oops'), findsOneWidget);
//     });
//
//     testWidgets('loginButtonPressed should navigate to home page on successful sign in', (WidgetTester tester) async {
//       when(mockAuthNotifier.signInWithEmail("", "")).thenAnswer((_) async {});
//
//       await tester.pumpWidget(
//         MaterialApp(
//           initialRoute: RouteNames.loginPage,
//           routes: {
//             RouteNames.loginPage: (context) => ChangeNotifierProvider<AuthNotifier>.value(
//               value: mockAuthNotifier,
//               child: const LoginForm(),
//             ),
//             RouteNames.homePage: (context) => Scaffold(),
//           },
//         ),
//       );
//
//       final usernameField = find.byKey(const Key('usernameField'));
//       final passwordField = find.byKey(const Key('passwordField'));
//
//       await tester.enterText(usernameField, 'testuser');
//       await tester.enterText(passwordField, 'testpassword');
//
//       final formWidget = tester.widget<LoginForm>(find.byType(LoginForm));
//
//       await formWidget.key;
//
//       // Verify that the navigation to the home page is triggered
//       await tester.pumpAndSettle();
//       expect(find.byType(Scaffold), findsOneWidget);
//     });
//   });
// }
