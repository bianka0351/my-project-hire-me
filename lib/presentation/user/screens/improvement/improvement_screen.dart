import 'package:flutter/material.dart';
import 'package:hireme/presentation/user/screens/improvement/backend-detail.dart';
import 'package:hireme/presentation/user/screens/improvement/flutter-detail.dart';
import 'package:hireme/presentation/user/screens/improvement/frontend-detail.dart';
import 'package:hireme/presentation/user/screens/improvement/marketing.dart';
import 'package:hireme/presentation/user/screens/improvement/teaching-arabic-detail-screen.dart';
import 'package:hireme/presentation/user/screens/improvement/teaching-english-detail-screen.dart';


class ImprovementScreen extends StatelessWidget {


  const ImprovementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2c2f34),
        body: Container(
            height: double.infinity,
            color: const Color(0xff2c2f34),
            child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    ListTile(
                      title: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                left: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                top: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                bottom: BorderSide(
                                    color: Color(0xffe7895e), width: 2)),
                            color: const Color(0xff1b1b1b)),
                        child: const Center(
                          child: Text(
                            'Flutter',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FlutterDetailScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                left: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                top: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                bottom: BorderSide(
                                    color: Color(0xffe7895e), width: 2)),
                            color: const Color(0xff1b1b1b)),
                        child: const Center(
                          child: Text(
                            'Frontend',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                FrontEndDetailScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                left: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                top: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                bottom: BorderSide(
                                    color: Color(0xffe7895e), width: 2)),
                            color: const Color(0xff1b1b1b)),
                        child: const Center(
                          child: Text(
                            'Backend',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                BackendDetailScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                left: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                top: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                bottom: BorderSide(
                                    color: Color(0xffe7895e), width: 2)),
                            color: const Color(0xff1b1b1b)),
                        child: const Center(
                          child: Text(
                            'Teaching Arabic',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TeachingArabicDetailScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                left: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                top: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                bottom: BorderSide(
                                    color: Color(0xffe7895e), width: 2)),
                            color: const Color(0xff1b1b1b)),
                        child: const Center(
                          child: Text(
                            'Teaching English',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                TeachingEnglishDetailScreen(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                left: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                top: BorderSide(
                                    color: Color(0xffe7895e), width: 2),
                                bottom: BorderSide(
                                    color: Color(0xffe7895e), width: 2)),
                            color: const Color(0xff1b1b1b)),
                        child: const Center(
                          child: Text(
                            'Marketing',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                MarketingDetailScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ))));
  }
}

