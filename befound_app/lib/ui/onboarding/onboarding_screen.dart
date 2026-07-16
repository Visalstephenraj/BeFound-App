import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/onboarding/onboarding_bloc.dart';
import '../../bloc/onboarding/onboarding_event.dart';
import '../../bloc/onboarding/onboarding_state.dart';
import 'onboarding_screen_one.dart';
import 'onboarding_screen_two.dart';
import 'onboarding_screen_three.dart';
import 'widgets/page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingBloc(),
      child: BlocBuilder<OnboardingBloc, OnboardingState>(
        builder: (context, state) {
          final pages = const [
            OnboardingScreenOne(),
            OnboardingScreenTwo(),
            OnboardingScreenThree(),
          ];

          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Expanded(child: pages[state.currentPage]),
                  const SizedBox(height: 20),
                  PageIndicator(currentIndex: state.currentPage, total: 3),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      if (state.currentPage > 0)
                        TextButton(
                          onPressed: () {
                            context.read<OnboardingBloc>().add(PreviousPage());
                          },
                          child: const Text("Back"),
                        ),
                      TextButton(
                        onPressed: () {
                          context.read<OnboardingBloc>().add(
                            state.currentPage == 2 ? CompleteOnboarding() : NextPage(),
                          );
                          if (state.currentPage == 2) {
                            Navigator.pushReplacementNamed(context, '/home');
                          }
                        },
                        child: Text(state.currentPage == 2 ? "Finish" : "Next"),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
