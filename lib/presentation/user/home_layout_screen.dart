import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/account-information/account-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/personal-information/personal-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/portfolio/portfolio.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/upload-image/upload-image.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/experience/experience.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/languages/languages.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/skills/skills.dart';
import 'package:hireme/presentation/user/screens/applied_jobs/AppliedJobs.dart';
import 'package:hireme/presentation/user/screens/improvement/improvement_screen.dart';
import 'package:hireme/presentation/user/screens/opportunities/opportunities-screen.dart';
import 'package:hireme/presentation/user/screens/settings/settings_screen.dart';
import 'package:hireme/repo/main_repo.dart';

import '../../models/get_suitable_job_announcements_for_user/get_suitable_job_announcements_for_user.dart';

class HomeLayoutScreen extends StatefulWidget {
  const HomeLayoutScreen({super.key});

  @override
  State<HomeLayoutScreen> createState() => _HomeLayoutScreenState();
}

class _HomeLayoutScreenState extends State<HomeLayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [

    const OpportunitiesScreen(),
    const AppliedJobs(),
    ImprovementScreen(),
    SettingsScreen(),
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
            decoration: const BoxDecoration(color: Color(0xff3a5d93)),
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
                                        builder: (context) => const Languages()));
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

      bottomNavigationBar: ConvexAppBar(
        activeColor:const Color(0xff3a5d93),
        height: 50,
        backgroundColor:const Color(0xff3a5d93) ,
        items: const [

          TabItem(icon: Icon(Icons.card_travel_outlined,color: Colors.white), title: 'Opportunities'),
          TabItem(icon: Icon(Icons.card_travel_outlined,color: Colors.white), title: 'Applied-Jobs'),
          TabItem(icon:Icon(Icons.trending_up,color: Colors.white,), title: 'Improvement'),
          TabItem(icon:  Icon(Icons.settings,color: Colors.white), title: 'Settings'),
        ],
        onTap: (int i){
          setState(() {
            currentIndex=i;
          });
        },
      ),
      body: screens[currentIndex],
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
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

Widget cvWidget(
    {required Function() ontap, required IconData icon, required String text}) {
  return
    InkWell(
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
