import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:soft_app/core/consts/theme/app_colors.dart';
import 'package:soft_app/core/consts/theme/app_fonts.dart';
import 'package:soft_app/presentation/routes/app_router.gr.dart';
import 'package:soft_app/resources/resources.dart';


@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    routing();
  }

  void routing(){
    Future.delayed(const Duration(seconds: 3),(){
      context.router.replace(const MainRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: Text(
                "Take only memories, leave only footprints",
                style: AppFonts.s25w400.copyWith(color: AppColors.white),
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Image.asset(Images.nothernLights,)
          ],
        ),
      ),
    );
  }
}
