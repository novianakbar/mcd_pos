import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mcd/ui/screens/checkout/checkout_screen.dart';
import 'package:mcd/ui/screens/home/home_screen.dart';
import 'package:mcd/ui/screens/order/order_screen.dart';
import 'package:mcd/ui/screens/payment/payment_screen.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      name: 'order',
      path: '/order',
      builder: (BuildContext context, GoRouterState state) =>
          const OrderScreen(),
    ),
    GoRoute(
      name: 'checkout',
      path: '/checkout',
      builder: (BuildContext context, GoRouterState state) =>
          const CheckoutScreen(),
    ),
    GoRoute(
      name: 'payment',
      path: '/pay',
      builder: (BuildContext context, GoRouterState state) =>
          const PaymentScreen(),
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}
