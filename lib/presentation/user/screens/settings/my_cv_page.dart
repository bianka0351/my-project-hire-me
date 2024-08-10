import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/account-information/account-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/personal-information/personal-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/portfolio/portfolio.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/upload-image/upload-image.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/experience/experience.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/languages/languages.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/skills/skills.dart';

class MyCvPage extends StatelessWidget {
  const MyCvPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: Builder(
                builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openEndDrawer();
                      },
                      icon: const Icon(Icons.home),
                      color: Colors.white,
                    )),
          ),
        ],
        toolbarHeight: 110,
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff2c2f34),
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: AppbarCustomClipper(),
          child: Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                // gradient: LinearGradient(
                //     begin: Alignment.topLeft,
                //     end: Alignment.bottomRight,
                //     colors: [Color(0xff3a5d93), Color(0xffe7895e)])
                color: Color(0xff3a5d93)),
            child: Center(
              child: Image.asset(
                'assets/images/logo_name1.png',
                height: 120,
                width: 180,
              ),
            ),
          ),
        ),
      ),
      endDrawer: Drawer(
        backgroundColor: const Color(0xff2c2f34),
        child: Column(
          children: [
            Stack(alignment: Alignment.center, children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    color: Color(0xff3a5d93),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    image: DecorationImage(
                        opacity: 0.5,
                        image: AssetImage('assets/images/resume.jpg'),
                        fit: BoxFit.fill)),
              ),
              const Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/personal_image.jpg',
                    ),
                    radius: 35,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Bianka Hmmo',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            ]),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Icon(
                          Icons.perm_device_information,
                          color: Color(0xffe7895e),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Basic Information :',
                          style:
                              TextStyle(fontSize: 22, color: Color(0xffe7895e)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Column(
                        children: [
                          cvWidget(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AccountInformation()));
                              },
                              icon: Icons.lock_outline,
                              text: 'Account Information '),
                          cvWidget(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PersonalInformation()));
                              },
                              icon: Icons.person,
                              text: 'Personal Information '),
                          cvWidget(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Portfolio()));
                              },
                              icon: Icons.folder_copy_outlined,
                              text: 'Portfolio '),
                          cvWidget(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UploadImage()));
                              },
                              icon: Icons.camera_alt_outlined,
                              text: 'Upload Image'),
                        ],
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.add_card_rounded,
                          color: Color(0xffe7895e),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Your Qualification :',
                          style:
                              TextStyle(fontSize: 22, color: Color(0xffe7895e)),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Column(
                        children: [
                          cvWidget(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Experience()));
                              },
                              icon: MyFlutterApp.award,
                              text: 'Experience '),
                          cvWidget(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Languages()));
                              },
                              icon: Icons.language_outlined,
                              text: 'Languages '),
                          cvWidget(
                              ontap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Skills()));
                              },
                              icon: Icons.keyboard_alt_rounded,
                              text: 'Skills'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body:
      Column(
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
    );
  }
}

class OpportunityDetails extends StatelessWidget {
  const OpportunityDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Opportunity Details'),
        backgroundColor: const Color(0xff1b1b1b), // AppBar color
      ),
      body: const Center(
        child: Text('Details Page'),
      ),
    );
  }
}

class AppbarCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

Widget cvWidget(
    {required Function() ontap, required IconData icon, required String text}) {
  return InkWell(
    onTap: ontap,
    child: Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: const Color(0xffa6c5fe),
              size: 20,
            ),
            const SizedBox(width: 5),
            Text(
              text,
              style: const TextStyle(fontSize: 15, color: Color(0xffa6c5fe)),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        )
      ],
    ),
  );
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
