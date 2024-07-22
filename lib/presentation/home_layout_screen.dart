import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/cv-pages/basic-information/account-information/account-information.dart';
import 'package:hireme/presentation/cv-pages/basic-information/personal-information/personal-information.dart';
import 'package:hireme/presentation/cv-pages/basic-information/portfolio/portfolio.dart';
import 'package:hireme/presentation/cv-pages/basic-information/upload-image/upload-image.dart';
import 'package:hireme/presentation/cv-pages/your-qualification/education/education.dart';
import 'package:hireme/presentation/cv-pages/your-qualification/experience/experience.dart';
import 'package:hireme/presentation/screens/my_skills_screen.dart';
import 'package:hireme/presentation/screens/opportunities-screen.dart';

import 'package:hireme/presentation/screens/settings_screen.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({super.key});

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int currentIndex = 1;
  List<Widget> screens = [
    const MySkillsScreen(),
    const OpportunitiesScreen(),
    const SettingsScreen(),
  ];

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
                  width: 150,
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
                          image: AssetImage('assets/images/resume'
                              '.jpg'),
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
                            style: TextStyle(
                                fontSize: 22, color: Color(0xffe7895e)),
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
                            style: TextStyle(
                                fontSize: 22, color: Color(0xffe7895e)),
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
                                          builder: (context) =>  Education()));
                                },
                                icon: MyFlutterApp.graduation_cap,
                                text: 'Education '),
                            cvWidget(
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>  Experience()));
                                },
                                icon: MyFlutterApp.award,
                                text: 'Experience '),
                            cvWidget(
                                ontap: () {},
                                icon: Icons.language_outlined,
                                text: 'Languages '),
                            cvWidget(
                                ontap: () {},
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
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              // gradient: LinearGradient(
              //     begin: Alignment.topLeft,
              //     end: Alignment.bottomRight,
              //     colors: [Color(0xff3a5d93), Color(0xffe7895e)])
              color: Color(0xff3a5d93)),
          child: BottomNavigationBar(
            currentIndex: currentIndex,
            selectedItemColor: const Color(0xffe7895e),
            unselectedItemColor: Colors.white,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.trending_up), label: 'My Skills'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel_outlined),
                  label: 'Opportunities'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: 'Settings'),
            ],
            onTap: (int i) {
              setState(() {
                currentIndex = i;
              });
            },
          ),
        ),
        body: screens[currentIndex]);
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
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
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
