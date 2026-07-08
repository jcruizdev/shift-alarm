import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
 
import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';
 
/// Entry point de app_empleados.
///
/// Fase actual: solo scaffolding. NO se inicializa Firebase aquí todavía
/// (Firebase.initializeApp queda pendiente para su propia fase).
void main() {
  runApp(
    const ProviderScope(
      child: AppEmpleados(),
    ),
  );
}
 
class AppEmpleados extends ConsumerWidget {
  const AppEmpleados({super.key});
 
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);
 
    return MaterialApp.router(
      title: 'Turnos — Empleados',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}