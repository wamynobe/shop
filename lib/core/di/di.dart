import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:whisky_shop/core/db/app_database.dart';
import 'package:whisky_shop/core/utils/get_it.dart';
import 'package:whisky_shop/core/auth/bloc/auth_cubit.dart';

/// Setup the dependencies
///
/// This function should be called only once in the main function.
Future<void> setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory(
            (await getApplicationDocumentsDirectory()).path,
          ),
  );

  HydratedBloc.storage = storage;
  getIt.registerLazySingleton<AppDatabase>(() => AppDatabase());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}

/// Release the dependencies
///
/// This function should be called when disposing the app root widget.
Future<void> release() async {
  getIt.unregister<AuthCubit>();
  getIt.unregister<AppDatabase>();
}
