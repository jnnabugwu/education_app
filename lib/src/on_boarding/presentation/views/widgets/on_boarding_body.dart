import 'package:education_app/core/extenstions/context_extension.dart';
import 'package:education_app/src/on_boarding/domain/entities/page_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/res/colour.dart';
import '../../../../../core/res/fonts.dart';
import '../../cubit/on_boarding_cubit.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key, required this.pageContent});

  final PageContent pageContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(pageContent.image, height: context.height * .4),
        SizedBox(
          height: context.height * .03,
        ),
        Padding(
          padding: const EdgeInsets.all(20).copyWith(bottom: 0),
          child: Column(
            children: [
              Text(
                pageContent.title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: Fonts.aeronik,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: context.height * .02,
              ),
              Text(pageContent.description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14)),
              SizedBox(height: context.height * .05),
              ElevatedButton(
                  onPressed: () {
                    // TODO(Get-Started): implement this functionality
                    //cache user
                    context.read<OnBoardingCubit>().cacheFirstTimer();
                    //push them to the appropriate screen
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 17),
                      backgroundColor: Colours.primaryColour,
                      foregroundColor: Colors.white),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      fontFamily: Fonts.aeronik,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
