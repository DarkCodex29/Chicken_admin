import 'package:chicken_admin/presentation/screens/client/client_page.dart';
import 'package:chicken_admin/presentation/screens/product/product_page.dart';
import 'package:chicken_admin/presentation/screens/home/home_page.dart';
import 'package:chicken_admin/presentation/screens/balance/balance_page.dart';
import 'package:chicken_admin/presentation/widgets/home_navigation_bar.dart';
import 'package:go_router/go_router.dart';


// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomePage.name,
      builder: (context, state) => const HomeNavigationBar(index: 0),
    ),

    GoRoute(
      path: '/client',
      name: ClientPage.name,
      builder: (context, state) => const HomeNavigationBar(index: 1),
    ),

    GoRoute(
      path: '/product',
      name: ProductPage.name,
      builder: (context, state) => const HomeNavigationBar(index: 2),
    ),

    GoRoute(
      path: '/balance',
      name: BalancePage.name,
      builder: (context, state) => const HomeNavigationBar(index: 3),
    ),
  ],
);