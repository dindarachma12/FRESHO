import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fresho_login/shared/shared.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF3F51B5),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "Hello, Dinda",
                          textAlign: TextAlign.left,
                          style: primaryTextStyle.copyWith(
                            fontSize: 30,
                          ),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Text(
                          "Features",
                          textAlign: TextAlign.left,
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 13),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Align(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          color: Color(0xff4154B7),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                      ),
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        top: (70 - 50) / 2,
                                        child: Image.asset(
                                          'images/auth_share.png',
                                          width: 40,
                                          height: 40,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("FreShare"),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Align(
                                  child: Stack(
                                    children: [
                                      Container(
                                      // alignment: Alignment.centerLeft,
                                      // child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Color(0xff4154B7),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    top: (70-50) / 2,
                                    child: Image.asset(
                                      'images/auth_help.png',
                                      width: 45,
                                      height: 45,
                                      fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),  
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("FreHelp"),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                Align(
                                  child: Stack(
                                    children: [
                                      Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: Color(0xff4154B7),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      top: (70-50) / 2,
                                      child: Image.asset(
                                        'images/auth_tips.png',
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ],
                                ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("FreTips"),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, left: 25),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Text(
                                "Social News",
                                textAlign: TextAlign.left,
                                style: blackTextStyle.copyWith(
                                  fontSize: 20,
                                ),
                                overflow: TextOverflow.visible,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 13),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Align(
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 290,
                                        height: 150,
                                        child: Image.asset(
                                          'images/auth_news1.png',
                                          // width: 295,
                                          // height: 160,
                                          // fit: BoxFit.contain,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.symmetric(horizontal: 13),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: 290,
                                    height: 150,
                                    child: Image.asset(
                                      'images/auth_news2.png',
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xff7280CE),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
