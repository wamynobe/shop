import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:whisky_shop/app.dart';
import 'package:whisky_shop/core/di/di.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
      FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
      await setup();
      // allow only portrait orientation can be changed later
      if (!kIsWeb) {
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
      }

      runApp(const AppRoot());
    },
    (error, stack) {
      log('runZonedGuarded: $error', error: error, stackTrace: stack);
    },
  );
}
