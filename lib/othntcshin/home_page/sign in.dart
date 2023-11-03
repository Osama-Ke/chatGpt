import 'package:chat_gbt/manger/color.dart';
import 'package:flutter/material.dart';

import '../../arts/artes.dart';
import 'class_home_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Homepage> question = [
    Homepage(
        quasins: "How to using packge camera in flutter ? ",
        answer:
            "من اجل استخدام بكج الكاميرا  قم باستدعاء تعليمة الامبورت  الخاصة في البكج "),
    Homepage(
        quasins: "كيف اقوم باضافة عناصر وازرار على  بكج الكامرة ؟ ",
        answer: "سدئني انا لو هعرف هقلك "),
    Homepage(
        quasins: "chat gbt ما يزال لدينا عمل هل انتا في وعيك ؟",
        answer: "أجل انا معك اكمل يا حبيبي ")
  ];
  late final mediaQuery = MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(
          width: 20,
          height: 20,
          child: Image(
            image: AssetImage("assest/image/image 2.png"),
            fit: BoxFit.fill,
            width: 20,
            height: 20,
          ),
        ),
        title: Text(
          "Chat GPT",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: ColorsManager.signin,
              fontSize: 20),
        ),
        backgroundColor: ColorsManager.botomsignin,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(mediaQuery.width * 0.05),
          bottomLeft: Radius.circular(mediaQuery.width * 0.05),
        )),
      ),
      backgroundColor: ColorsManager.welcome,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: mediaQuery.height * 0.8,
              child: ListView.separated(
                itemCount: question.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 30),
                      child: Text(
                        textAlign: TextAlign.center,
                        question[index].quasins,
                        style: TextStyle(
                            color: ColorsManager.signin, fontSize: 24),
                      ),
                    ),
                    subtitle: SizedBox(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 40,
                              ),
                              child: SizedBox(
                                width: 30,
                                height: 30,
                                child: ClipPath(
                                  clipper: TopSharpClipper(),
                                  child: Container(
                                    color: ColorsManager.botomsignin,
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 35,
                            height: 35,
                            child: Image(
                              image:
                                  const AssetImage("assest/image/image 2.png"),
                              fit: BoxFit.cover,
                              color: ColorsManager.botomcamre,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60, top: 30),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                  bottomRight: Radius.circular(15),
                                ),
                                color: ColorsManager.botomsignin,
                              ),
                              width: 270,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  question[index].answer,
                                  style: TextStyle(
                                      color: ColorsManager.signin,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
                right: 5,
                bottom: 6,
                top: 20,
              ),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Type your question here ...",
                    suffixIcon: Icon(
                      Icons.send,
                      color: ColorsManager.botomcamre,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    filled: true,
                    fillColor: ColorsManager.ContenirWelcome),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: mediaQuery.height * 0.08),
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(mediaQuery.width * 0.05),
          ),
          onPressed: () {},
          backgroundColor: ColorsManager.botomcamre,
          child: Icon(
            Icons.camera_enhance_sharp,
            color: ColorsManager.signin,
            size: 30,
          ),
        ),
      ),
    );
  }
}
