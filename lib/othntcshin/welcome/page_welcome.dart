import 'package:chat_gbt/othntcshin/home_page/sign%20in.dart';
import 'package:flutter/material.dart';

import '../../animation/animation_rout.dart';
import '../../manger/color.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  double hi = 130;

  PageController? _pageController;

  bool istrue = true;
  Color Signincolor = Colors.blue;

  bool showfirst = true;

  @override
  void initState() {
    super.initState();
    _pageController = PageController()
      ..addListener(() {
        setState(() {
          if ((_pageController?.page ?? 0).roundToDouble() == 1) {
            istrue = false;
          }
          if ((_pageController?.page ?? 0).roundToDouble() == 0) {
            istrue = true;
          }
        });
      });
  }

  late final mediaQuery = MediaQuery.of(context).size;
  late double welcomeButtonPosition = mediaQuery.height - 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              "assest/image/image 1.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 480),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(100)),
                  color: ColorsManager.ContenirWelcome,
                ),
                width: double.infinity,
                height: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Text(
                        "welcome",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: ColorsManager.welcome),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 9),
                      child: Text(
                        "every think you want here",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w300,
                            color: ColorsManager.welcome),
                      ),
                    )
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              top: welcomeButtonPosition,
              duration: const Duration(milliseconds: 600),
              child: InkWell(
                onTap: () {
                  setState(() {
                    if (showfirst) {
                      welcomeButtonPosition =
                          welcomeButtonPosition - mediaQuery.height * 0.45;
                      showfirst = false;
                    }
                  });
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(bottom: 30),
                  // height: hi,
                  decoration: BoxDecoration(
                      color: ColorsManager.botomsignin,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(75))),
                  child: AnimatedCrossFade(
                    firstChild: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 150),
                      child: Text(
                        "Sign in ",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: ColorsManager.signin),
                      ),
                    ),
                    secondChild: Column(
                      children: [
                        Stack(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              TextButton(
                                onPressed: () {
                                  _pageController?.animateToPage(0,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.linear);

                                  // updatePage(true);
                                },
                                child: Text("sign in ",
                                    style: TextStyle(
                                        color: istrue
                                            ? ColorsManager.signin
                                            : ColorsManager.signin
                                                .withOpacity(0.5),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold)),
                              ),
                              TextButton(
                                onPressed: () {
                                  _pageController?.animateToPage(1,
                                      duration:
                                          const Duration(milliseconds: 400),
                                      curve: Curves.linear);
                                },
                                child: Text("sign up ",
                                    style: TextStyle(
                                        color: istrue
                                            ? ColorsManager.signin
                                                .withOpacity(0.5)
                                            : ColorsManager.signin,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              )
                            ],
                          ),
                          AnimatedContainer(
                            duration: const Duration(milliseconds: 400),
                            width: 40,
                            height: 3,
                            color: ColorsManager.signin,
                            margin: EdgeInsets.only(
                                top: istrue ? 40 : 40, left: istrue ? 95 : 255),
                          ),
                        ]),
                        SizedBox(
                          width: double.infinity,
                          height: 490,
                          child: PageView(
                            physics: const BouncingScrollPhysics(),
                            controller: _pageController,
                            children: [
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 70, left: 25, right: 25),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                prefixIcon: const Icon(Icons
                                                    .alternate_email_outlined),
                                                hintText: "Email address",
                                                border:
                                                    const OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                filled: true,
                                                fillColor: ColorsManager
                                                    .ContenirWelcome)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30, left: 25, right: 25),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                prefixIcon: const Icon(
                                                    Icons.lock_outline_rounded),
                                                hintText: "password",
                                                border:
                                                    const OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                filled: true,
                                                fillColor: ColorsManager
                                                    .ContenirWelcome)),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(
                                        SlideRiht(
                                          page: const HomePage(),
                                        ),
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color:
                                                ColorsManager.ContenirWelcome,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(100))),
                                        height: 50,
                                        width: 175,
                                        child: const Center(
                                            child: Text(
                                          "sign in ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 11),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Forgot Password?",
                                          style: TextStyle(
                                              color: ColorsManager.welcome,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 70, left: 25, right: 25),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                prefixIcon: const Icon(Icons
                                                    .alternate_email_outlined),
                                                hintText: "Email address",
                                                border:
                                                    const OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                filled: true,
                                                fillColor: ColorsManager
                                                    .ContenirWelcome)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30, left: 25, right: 25),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                prefixIcon: const Icon(
                                                    Icons.lock_outline_rounded),
                                                hintText: "password",
                                                border:
                                                    const OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                filled: true,
                                                fillColor: ColorsManager
                                                    .ContenirWelcome)),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 25, right: 25),
                                        child: TextFormField(
                                            decoration: InputDecoration(
                                                prefixIcon: const Icon(
                                                    Icons.lock_outline_rounded),
                                                hintText: "Confirm Password",
                                                border:
                                                    const OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    10))),
                                                filled: true,
                                                fillColor: ColorsManager
                                                    .ContenirWelcome)),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 30),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color:
                                                ColorsManager.ContenirWelcome,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(100))),
                                        height: 50,
                                        width: 175,
                                        child: const Center(
                                            child: Text(
                                          "sign up ",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 11),
                                    child: TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          "Forgot Password?",
                                          style: TextStyle(
                                              color: ColorsManager.welcome,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    crossFadeState: showfirst
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 600),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
