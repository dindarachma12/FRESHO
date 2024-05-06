import 'package:flutter/material.dart';
// import 'package:fresho_login/pages/auth/home.dart';
import 'package:fresho_login/pages/auth/login.dart';
import 'package:fresho_login/pages/auth/navbar.dart';
import 'package:fresho_login/pages/welcome_pages.dart';
import 'package:fresho_login/shared/shared.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordHide = false;

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    passwordHide = true;
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context) {
                return WelcomePage();
            }));
          },
          ),
        ),
        body: SafeArea(
            child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            Column(
              children: [
                Image.asset('assets/images/auth_logo.png',
                    height: 81, fit: BoxFit.fill),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Sign Up",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 24,
                    color: primaryColor,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 10),
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Username',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: TextField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: whiteColor,
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0.5),
                                      borderRadius: BorderRadius.circular(25)),
                                  hintText: 'Create Your Username'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.065,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: whiteColor,
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(width: 0.5),
                                      borderRadius: BorderRadius.circular(25)),
                                  hintText: 'Ex:example@gmail.com'),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                              child: Text(
                            'Password',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          Container(
                            width: MediaQuery.of(context).size.width * 1.5,
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.065,
                              child: TextField(
                                controller: passwordController,
                                obscureText: passwordHide,
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: whiteColor,
                                    border: OutlineInputBorder(
                                        borderSide:
                                            const BorderSide(width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    hintText: 'Create Your Password',
                                    suffix: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          // passwordHide = !passwordHide;
                                          if (passwordHide) {
                                            //if passenable == true, make it false
                                            passwordHide = false;
                                          } else {
                                            passwordHide =
                                                true; //if passenable == false, make it true
                                          }
                                        });
                                      },
                                      icon: Icon(passwordHide == true
                                          ? Icons.visibility_off
                                          : Icons.visibility),
                                    )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.2,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(30),
                            color: primaryColor,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.95,
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return const BottomNavbar ();
                              }));
                                  // Navigator.pushAndRemoveUntil(context, newRoute, (route) => false)
                                },
                                child: const Center(
                                  child: Text(
                                    'Sign Up',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xffffffff)),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Already have a account?",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(
                                            builder: (context) {
                                      return LoginPage();
                                    }));
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff2B4865)),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )));
  }
}

