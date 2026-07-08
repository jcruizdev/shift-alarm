import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/screens/splash_screen.dart';

/// Rutas de la aplicación. Solo se define la ruta Splash por ahora.
/// Las rutas de auth/turnos/alarmas se agregarán en fases posteriores,
/// junto con la lógica de redirección basada en sesión (aún no existe).
abstract class AppRoutes {
  static const splash = '/';
}

/// Provider de GoRouter. Configuración base sin lógica de negocio:
/// no hay `redirect`, no hay guardas de autenticación todavía.
final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (context, state) => const SplashScreen(),
      ),
    ],
  );
});
