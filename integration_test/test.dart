import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:gas_price_tracker/flutter_flow/flutter_flow_drop_down.dart';
import 'package:gas_price_tracker/flutter_flow/flutter_flow_icon_button.dart';
import 'package:gas_price_tracker/flutter_flow/flutter_flow_widgets.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:gas_price_tracker/index.dart';
import 'package:gas_price_tracker/main.dart';
import 'package:gas_price_tracker/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';
import 'package:gas_price_tracker/backend/firebase/firebase_config.dart';
import 'package:gas_price_tracker/auth/firebase_auth/auth_util.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await initFirebase();
  });

  setUp(() async {
    await authManager.signOut();
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('Successful Account Creation', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FFAppState(),
        ),
      ],
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.enterText(
        find.byKey(const ValueKey('SignupEmail_q3y0')), 'kanz.giwa@uri.edu');
    await tester.enterText(
        find.byKey(const ValueKey('SignupPassword_67yh')), 'cupcake');
    await tester.enterText(
        find.byKey(const ValueKey('SignupConfirmPassword_a0hp')), 'cupcake');
    await tester.tap(find.byKey(const ValueKey('SignupButton_7h7e')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.text('Check this out!'), findsWidgets);
  });

  testWidgets('Net Promoter Score', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => FFAppState(),
        ),
      ],
      child: MyApp(
        entryPage: NpsWidget(),
      ),
    ));
    await GoogleFonts.pendingFonts();

    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    await tester.tap(find.byKey(const ValueKey('NPS_y9hg')));
    await tester.tap(find.byKey(const ValueKey('Button_1g9c')));
    await tester.tap(find.byKey(const ValueKey('Button_md9c')));
    await tester.tap(find.byKey(const ValueKey('Button_msdr')));
    await tester.tap(find.byKey(const ValueKey('Button_qi9w')));
    await tester.tap(find.byKey(const ValueKey('Button_jcdf')));
    await tester.tap(find.byKey(const ValueKey('Button_34f5')));
    await tester.tap(find.byKey(const ValueKey('Button_kyqm')));
    await tester.tap(find.byKey(const ValueKey('Button_3v19')));
    await tester.tap(find.byKey(const ValueKey('Button_1f6u')));
    await tester.enterText(
        find.byKey(const ValueKey('TextField_fawq')), 'I love this app');
    await tester.tap(find.byKey(const ValueKey('Button_t2pj')));
    await tester.pumpAndSettle(const Duration(milliseconds: 5000));
    expect(find.byKey(const ValueKey('Profile05_9xhr')), findsWidgets);
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
