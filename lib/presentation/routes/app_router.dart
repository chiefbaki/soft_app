import 'package:auto_route/auto_route.dart';
import 'package:soft_app/presentation/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(page: SplashRoute.page, initial: true)];
}
