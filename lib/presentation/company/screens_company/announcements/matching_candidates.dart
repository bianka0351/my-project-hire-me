import 'package:flutter/material.dart';
import 'package:hireme/presentation/company/screens_company/announcements/appliers.dart';
import 'package:hireme/presentation/company/screens_company/candidates/candidates_details.dart';

class MatchingCandidates extends StatelessWidget {
  const MatchingCandidates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => CandidatesDetails()),
                    // );
                  },
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xff1b1b1b),
                      border: const Border(
                        right: BorderSide(
                          color: Color(0xffe7895e),
                          width: 5,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: const CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/images/personal_image.jpg',
                                      ),
                                      backgroundColor: Color(0xff3a5d93),
                                      radius: 35,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    width: 110,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: const Color(0xffe7895e),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Bianka Hmmo',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  cvDetails(text1: 'Gender :', text2: ' Female'),
                                  const Divider(
                                    color: Color(0xffe7895e),
                                    thickness: 2,
                                    endIndent: 20,
                                  ),
                                  cvDetails(text1: 'Location :', text2: ' Aleppo/Syria'),
                                  const Divider(
                                    color: Color(0xffe7895e),
                                    thickness: 2,
                                    endIndent: 20,
                                  ),
                                  cvDetails(text1: 'Main Skill :', text2: ' Flutter'),
                                  const Divider(
                                    color: Color(0xffe7895e),
                                    thickness: 2,
                                    endIndent: 20,
                                  ),
                                  cvDetails(text1: 'Email :', text2: ' bianka@gmail.com'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            showInterviewDialog(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffe7895e),
                          ),
                          child: const Text(
                            'Interview',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}

Widget cvDetails({required String text1, required String text2}) {
  return Row(
    children: [
      Text(
        text1,
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        text2,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    ],
  );
}
