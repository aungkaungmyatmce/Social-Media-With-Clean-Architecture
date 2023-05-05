import 'package:flutter/material.dart';
import 'package:flutter_social_media_with_clean_architecture/src/config/app_router.dart';
import 'package:flutter_social_media_with_clean_architecture/src/config/app_theme.dart';
import 'package:flutter_social_media_with_clean_architecture/src/shared/presentation/widgets/custom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: CustomTheme().theme(),
      routerConfig: AppRouter().router,
    );
  }
}
