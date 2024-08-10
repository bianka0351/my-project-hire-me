import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';

class OpportunityDetails extends StatelessWidget {
  const OpportunityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      body: Stack(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
                color: Color(0xff3a5d93),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                image: DecorationImage(
                    opacity: 0.4,
                    image: AssetImage('assets/images/details.jpg'),
                    fit: BoxFit.fill)),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/images/loGo.jpeg',
                            ),
                            radius: 30,
                          ),
                          SizedBox(width: 20),
                          Text('Smart Solution',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22))
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    const Text('Back end developer',
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                    const SizedBox(height: 40),
                    button(text: 'Apply Now', onpressed: () {})
                  ],
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: 380,
                          height: 450,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff1b1b1b),
                              border: const Border(
                                  right: BorderSide(
                                      color: Color(0xffe7895e), width: 5))),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Opportunity Details',
                                        style: TextStyle(
                                            color: Color(0xffe7895e),
                                            fontSize: 20)),
                                  ],
                                ),
                                const SizedBox(height: 20),
                                // Container(
                                //   width: 300,
                                //   height: 350,
                                //   decoration: BoxDecoration(
                                //     borderRadius: BorderRadius.circular(15),
                                //     color: const Color(0xff2c2f34),
                                //   ),
                                //   child: const Padding(
                                //     padding: EdgeInsets.all(15),
                                //     child: Column(
                                //       children: [
                                //         Expanded(
                                //           child: Row(
                                //             children: [
                                //               Icon(
                                //                 Icons.group_sharp,
                                //                 color: Color(0xffa6c5fe),
                                //               ),
                                //               SizedBox(width: 5),
                                //               Text('Gender',
                                //                   style: TextStyle(
                                //                     color: Color(0xffa6c5fe),
                                //                   )),
                                //               SizedBox(width: 100),
                                //               Text('Female',
                                //                   style: TextStyle(
                                //                     color: Colors.white,
                                //                   )),
                                //             ],
                                //           ),
                                //         ),
                                //         Expanded(
                                //           child: Row(
                                //             children: [
                                //               Icon(
                                //                 MyFlutterApp.graduation_cap,
                                //                 color: Color(0xffa6c5fe),
                                //               ),
                                //               SizedBox(width: 5),
                                //               Text('Scientific Level',
                                //                   style: TextStyle(
                                //                     color: Color(0xffa6c5fe),
                                //                   )),
                                //               SizedBox(width: 45),
                                //               Text('College Degree',
                                //                   style: TextStyle(
                                //                     color: Colors.white,
                                //                   )),
                                //             ],
                                //           ),
                                //         ),
                                //         Expanded(
                                //           child: Row(
                                //             children: [
                                //               Icon(
                                //                Icons.card_travel_outlined,
                                //                 color: Color(0xffa6c5fe),
                                //               ),
                                //               SizedBox(width: 5),
                                //               Text('Job Nature',
                                //                   style: TextStyle(
                                //                     color: Color(0xffa6c5fe),
                                //                   )),
                                //               SizedBox(width: 70),
                                //               Text('IT and Engeneering ',
                                //                   style: TextStyle(
                                //                     color: Colors.white,
                                //                   ),
                                //               ),
                                //             ],
                                //           ),
                                //         ),
                                //         Expanded(
                                //           child: Row(
                                //             children: [
                                //               Icon(
                                //                 MyFlutterApp.award,
                                //                 color: Color(0xffa6c5fe),
                                //               ),
                                //               SizedBox(width: 5),
                                //               Text('Experience',
                                //                   style: TextStyle(
                                //                     color: Color(0xffa6c5fe),
                                //                   )),
                                //               SizedBox(width: 70),
                                //               Text('1 Years',
                                //                   style: TextStyle(
                                //                     color: Colors.white,
                                //                   )),
                                //             ],
                                //           ),
                                //         ),
                                //         Expanded(
                                //           child: Row(
                                //             children: [
                                //               Icon(
                                //                 MyFlutterApp.award,
                                //                 color: Color(0xffa6c5fe),
                                //               ),
                                //               SizedBox(width: 5),
                                //               Text('Preferred to know',
                                //                   style: TextStyle(
                                //                     color: Color(0xffa6c5fe),
                                //                   )),
                                //               SizedBox(width: 30),
                                //               Text('Manegment',
                                //                   style: TextStyle(
                                //                     color: Colors.white,
                                //                   )),
                                //             ],
                                //           ),
                                //         ),
                                //         Expanded(
                                //           child: Row(
                                //             children: [
                                //               Icon(
                                //                 Icons.access_time_outlined,
                                //                 color: Color(0xffa6c5fe),
                                //               ),
                                //               SizedBox(width: 5),
                                //               Text('Type of Employment',
                                //                   style: TextStyle(
                                //                     color: Color(0xffa6c5fe),
                                //                   )),
                                //               SizedBox(width: 15),
                                //               Text('Full-Time',
                                //                   style: TextStyle(
                                //                     color:Colors.white,
                                //                   )),
                                //             ],
                                //           ),
                                //         ),
                                //         Expanded(
                                //           child: Row(
                                //             children: [
                                //               Icon(
                                //                 MyFlutterApp.money,
                                //                 color: Color(0xffa6c5fe),
                                //               ),
                                //               SizedBox(width: 5),
                                //               Text('Salary',
                                //                   style: TextStyle(
                                //                     color: Color(0xffa6c5fe),
                                //                   )),
                                //               SizedBox(width: 100),
                                //               Text('1,000,000',
                                //                   style: TextStyle(
                                //                     color: Colors.white,
                                //                   )),
                                //             ],
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                Container(
                                  width: 300,

                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xff2c2f34),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.group_sharp,
                                              color: Color(0xffa6c5fe),
                                            ),
                                            SizedBox(width: 5),
                                            Text('Gender',
                                                style: TextStyle(
                                                  color: Color(0xffa6c5fe),
                                                )),
                                            Spacer(), // سيقوم Spacer بتوسيع المساحة المتبقية من السطر تلقائيًا
                                            Text('Female',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 20), // إضافة تباعد عمودي بين الأسطر
                                        Row(
                                          children: [
                                            Icon(
                                              MyFlutterApp.graduation_cap,
                                              color: Color(0xffa6c5fe),
                                            ),
                                            SizedBox(width: 5),
                                            Text('Scientific Level',
                                                style: TextStyle(
                                                  color: Color(0xffa6c5fe),
                                                )),
                                            Spacer(),
                                            Text('College Degree',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.card_travel_outlined,
                                              color: Color(0xffa6c5fe),
                                            ),
                                            SizedBox(width: 5),
                                            Text('Job Nature',
                                                style: TextStyle(
                                                  color: Color(0xffa6c5fe),
                                                )),
                                            Spacer(),
                                            Text('IT and Engineering',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Icon(
                                              MyFlutterApp.award,
                                              color: Color(0xffa6c5fe),
                                            ),
                                            SizedBox(width: 5),
                                            Text('Experience',
                                                style: TextStyle(
                                                  color: Color(0xffa6c5fe),
                                                )),
                                            Spacer(),
                                            Text('1 Year',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Icon(
                                              MyFlutterApp.award,
                                              color: Color(0xffa6c5fe),
                                            ),
                                            SizedBox(width: 5),
                                            Text('Preferred to know',
                                                style: TextStyle(
                                                  color: Color(0xffa6c5fe),
                                                )),
                                            Spacer(),
                                            Text('Management',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.access_time_outlined,
                                              color: Color(0xffa6c5fe),
                                            ),
                                            SizedBox(width: 5),
                                            Text('Type of Employment',
                                                style: TextStyle(
                                                  color: Color(0xffa6c5fe),
                                                )),
                                            Spacer(),
                                            Text('Full-Time',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
                                        SizedBox(height: 20),
                                        Row(
                                          children: [
                                            Icon(
                                              MyFlutterApp.money,
                                              color: Color(0xffa6c5fe),
                                            ),
                                            SizedBox(width: 5),
                                            Text('Salary',
                                                style: TextStyle(
                                                  color: Color(0xffa6c5fe),
                                                )),
                                            Spacer(),
                                            Text('1,000,000',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),

                                      ],
                                    ),
                                  ),
                                )

                                ,const SizedBox(height: 20),
                                const Text('Aleppo-Syria',
                                    style: TextStyle(
                                        color: Color(0xffe7895e),
                                        fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: 380,
                          height: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff1b1b1b),
                              border: const Border(
                                  right: BorderSide(
                                      color: Color(0xffe7895e), width: 5))),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('About The Opportunity',
                                        style: TextStyle(
                                            color: Color(0xffe7895e),
                                            fontSize: 20)),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Container(
                                  width: 300,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xff2c2f34),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(25),
                                    child: Text(
                                      '-Work to know the administrative needs of various services, and take the necessary measures to provide them. -Follow up on the maintenance of the Authority’s assets, whether it is preventive maintenance or maintenance to repair faults and report any damages. -Supervising the review of security and safety equipment records, and matching the information contained therein with the results of field inspection tours.',
                                      style: TextStyle(
                                        color:Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),

                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget button({required String text, required, required Function() onpressed}) {
  return Container(
    height: 40,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: const Color(0xffe7895e)),
    clipBehavior: Clip.antiAlias,
    child: MaterialButton(
      onPressed: onpressed,
      minWidth: 180,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
  );
}
