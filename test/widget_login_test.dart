import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testflutter/features/login/bloc/login_bloc.dart';
import 'package:testflutter/features/login/bloc/login_screen.dart';
void main() {
  testWidgets('Login page test', (WidgetTester tester) async {
    // Wrap the LoginPage widget with the BlocProvider
    await tester.pumpWidget(
      MaterialApp(
        home: BlocProvider(
          create: (_) => LoginBloc(),
          child: const LoginPage(),
        ),
      ),
    );

    // Now you can perform test interactions
    await tester.enterText(find.byType(TextField).first, 'test'); // Username
    await tester.enterText(find.byType(TextField).last, 'test'); // Password
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();
    await tester.pumpAndSettle(const Duration(seconds: 3));

    // Add assertions as needed
    expect(find.text('Welcome to Home Page'), findsOneWidget);
  });
}
