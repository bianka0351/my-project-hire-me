import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/account-information/account-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/personal-information/personal-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/portfolio/portfolio.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/upload-image/upload-image.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/experience/experience.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/languages/languages.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/skills/skills.dart';
import 'package:hireme/presentation/user/screens/settings/about_us_page.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              'Welcome to HireMe! Your privacy is important to us. This Privacy Policy explains how we collect, use, and protect your information.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Information We Collect',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffe7895e),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  BulletPoint(
                    text:
                        ' Personal Information: When you register, we collect your name, email, resume, and job preferences.',
                  ),
                  BulletPoint(
                      text:
                          ' Usage Data: We gather information on how you use the app, including search queries and job applications.'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'How We Use Your Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffe7895e),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  BulletPoint(
                    text:
                    'Job Matching: to provide you with suitable job opportunities.'
                  ),
                  BulletPoint(
                      text:
                      'Improving Services: to enhance app features and user experience.'),
                  BulletPoint(
                      text:
                      'Communication: to send updates, job alerts, and career advice.'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Sharing Your Information',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffe7895e),
              ),
            ),
            const SizedBox(height: 8),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  BulletPoint(
                    text:  ' With Employers: Relevant details are shared with potential employers when you apply for a job.'
                  ),
                  BulletPoint(
                      text:
                      ' Third-Party Services: We may use third-party services to improve our app. These services are required to protect your information.')
                    ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Your Rights',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffe7895e),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  BulletPoint(
                    text:
                    'Access and Control: You can access, update, or delete your personal information at any time.'
                  ),
                  BulletPoint(
                      text:
                      'Opt-Out: You can opt out of receiving communications from us.'),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Security',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffe7895e),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'We implement robust security measures to protect your information from unauthorized access.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Changes to This Policy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xffe7895e),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'We may update this Privacy Policy periodically. We will notify you of any significant changes.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'By using HireMe, you agree to this Privacy Policy. For any questions, please contact us at hireme@info.com.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(height: 16),
            const Text(
              'Thank you for trusting HireMe!',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
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
