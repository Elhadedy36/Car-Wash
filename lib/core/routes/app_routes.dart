import 'package:carwashing/features/auth/auth_cubit/cubit/auth_cubit.dart';
import 'package:carwashing/features/auth/view/forget_password_view.dart';
import 'package:carwashing/features/auth/view/sign_in_view.dart';
import 'package:carwashing/features/auth/view/sign_up_view.dart';
import 'package:carwashing/features/home/view/home_view.dart';
import 'package:carwashing/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const SplashView()),
  GoRoute(
      path: '/signInView',
      builder: (context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignInView(),
          )),
  GoRoute(path: '/homeView', builder: (context, state) => const HomeView()),
  GoRoute(
      path: '/forgotPassword',
      builder: (context, state) => const ForgetPasswordView()),
  GoRoute(
      path: '/signUpView',
      builder: (context, state) => BlocProvider(
            create: (context) => AuthCubit(),
            child: const SignUpView(),
          )),
]);