import 'package:chicken_admin/config/router/app_router.dart';
import 'package:chicken_admin/config/theme/app_theme.dart';
import 'package:chicken_admin/presentation/providers/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UtilsProvider>(create: (_) => UtilsProvider()),
        //ChangeNotifierProvider<Client>(create: (_) => Client()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: 'Chicken Admin',
        theme: AppTheme(selectedColor: 0).getTheme(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

