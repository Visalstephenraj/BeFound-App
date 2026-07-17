import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/splash_screen/splash_bloc.dart';
import '../../bloc/splash_screen/splash_event.dart';
import '../../bloc/splash_screen/splash_state.dart';
import 'widgets/splash_logo.dart';
import 'widgets/splash_background.dart';
import 'widgets/splash_loading.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc()..add(StartSplash()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashFinished) {
            Navigator.pushReplacementNamed(context, '/onboarding');
          }
        },
        child: Scaffold(
          body: Stack(
            children: [
              const SplashBackground(),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Spacer(),
                    SplashLogo(),
                    Spacer(),
                    SplashLoading(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
