import 'package:flutter/material.dart';

/// Tema base de la aplicación. Placeholder inicial — se ajustará
/// cuando se defina la identidad visual definitiva del producto.
class AppTheme {
  AppTheme._();

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF2E6F40),
        brightness: Brightness.light,
      ),
    );
  }
}
