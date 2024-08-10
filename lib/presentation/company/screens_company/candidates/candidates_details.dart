import 'package:flutter/material.dart';

class CandidatesDetails extends StatelessWidget {
  const CandidatesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      body:
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/personal_image.jpg',
                ),
                radius: 50,
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Bianka Hmmo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            const Center(
              child: Text(
                'App Developer',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 192, 188, 188),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff1b1b1b),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 5))),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Personal Information',
                                style: TextStyle(
                                  color: Color(0xffe7895e),
                                  // Accent color for titles
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              InfoWidget(
                                  text1: '  Name:', text2: 'Bianka Hmmo'),
                              InfoWidget(
                                  text1: '  Email:',
                                  text2: 'biankahmmo@gmail.com'),
                              InfoWidget(
                                  text1: '  Phone:', text2: '0992070743'),
                              InfoWidget(
                                  text1: '  Location:', text2: 'aleppo/syria'),
                              InfoWidget(
                                  text1: '  Languages:', text2: 'aleppo/syria'),
                              InfoWidget(
                                  text1: '  Birthday:', text2: '19/2/1997'),
                              InfoWidget(
                                  text1: '  Gender:', text2: 'Female'),
                              InfoWidget(
                                  text1: '  Scientific level:', text2: 'PH.D'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff1b1b1b),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 5))),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Experience & Portfoilo',
                                style: TextStyle(
                                  color: Color(0xffe7895e),
                                  // Accent color for titles
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),

                              InfoWidget(text1: '  Job Title', text2: 'HR'),
                              InfoWidget(text1: '  Company', text2: 'OLACC'),
                              const Row(
                                children: [
                                  Text('  Date', style: TextStyle(color: Color(0xffa6c5fe), fontSize: 18)),
                                  SizedBox(width: 20),
                                  Text('  2020  -', style: TextStyle(color: Colors.white, fontSize: 18)),
                                  Text('  2024', style: TextStyle(color: Colors.white, fontSize: 18)),
                                ],
                              ),
                              InfoWidget(text1: '  Description', text2: ''),
                              const Divider(color: Color(0xffe7895e),),
                              InfoWidget(
                                  text1: '  Portfolio:',
                                  text2: 'github.com/bianka00\ninstagram.com'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xff1b1b1b),
                            border: const Border(
                                right: BorderSide(
                                    color: Color(0xffe7895e), width: 5))),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Skills',
                                style: TextStyle(
                                  color: Color(0xffe7895e),
                                  // Accent color for titles
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              InfoWidget(text1: '  skill:', text2: 'Swift & Kotlin'),
                              InfoWidget(text1: '  Skill Nature:', text2: 'Software Engineer'),
                              InfoWidget(text1: '  Date Of Start:', text2: '2021'),
                              InfoWidget(text1: '  Description:', text2: ''),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget InfoWidget({required String text1, required String text2}) {
  return Column(
    children: [
      Row(
        children: [
          Text(text1, style: const TextStyle(color: Color(0xffa6c5fe), fontSize: 18)),
          const SizedBox(width: 20),
          Text(text2, style: const TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
      const SizedBox(height: 5),
    ],
  );
}