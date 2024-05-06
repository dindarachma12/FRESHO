import 'package:flutter/material.dart';
import 'package:fresho_login/pages/auth/login.dart';
import 'package:fresho_login/pages/auth/register.dart';
import 'package:fresho_login/shared/shared.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Image.asset('assets/images/landingpage.png',
                height: 300, fit: BoxFit.fill),

            const SizedBox(
              height: 30,
            ),

            Text(
              "Welcome To Fresho",
              style: secondaryTextStyle.copyWith(fontSize: 24),
              textAlign: TextAlign.center,
            ),

            Text(
              "Lets reduce food waste for a clean \nenvironment",
              style: whiteTextStyle.copyWith(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: whiteColor,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 500),
                          pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) { 
                            final tween = Tween<Offset>(
                              begin: Offset(1.0, 0.0),
                              end: Offset(0.0, 0.0),
                            );
                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      ); 
                    },
                    child: Center(
                      child: Text(
                        'Login',
                        style: whiteTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: primaryColor),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),
            
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.065,
                  decoration: BoxDecoration(
                    // color: primaryColor,
                    borderRadius: BorderRadius.circular(35),
                    border: Border.all(
                      color: whiteColor,
                      width: 2.0,
                    ),
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                        PageRouteBuilder(
                          transitionDuration: Duration(milliseconds: 500),
                          pageBuilder: (context, animation, secondaryAnimation) => RegisterPage(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) { 
                            final tween = Tween<Offset>(
                              begin: Offset(1.0, 0.0),
                              end: Offset(0.0, 0.0),
                            );
                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        ),
                      );
                          //     MaterialPageRoute(builder: (context,) {
                          //   return const RegisterPage ();
                          // }));
                    },
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style: whiteTextStyle.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            color: whiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
