import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/account-information/account-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/personal-information/personal-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/portfolio/portfolio.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/upload-image/upload-image.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/experience/experience.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/languages/languages.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/skills/skills.dart';


class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xff2c2f34),
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
            width: MediaQuery
                .of(context)
                .size
                .width,
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: const [
            Text(
              'About HireMe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xffe7895e),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Welcome to HireMe, the smart application designed to revolutionize the job search and recruitment process. '
              'Our mission is to connect job seekers with the most suitable job opportunities and provide them with personalized advice, '
              'while helping companies find the perfect match for their vacancies.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 24),
            Text(
              'For Job Seekers',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffe7895e)),
            ),
            SizedBox(height: 8),
            Text(
              'HireMe uses advanced algorithms and data analysis to match your skills, experience, and preferences with the best job opportunities available. '
              'Here’s how we make your job search easier and more effective:',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 8),
            BulletPoint(
              text:
                  'Personalized Job Matches: We analyze your resume, skills, and previous job experiences to recommend job opportunities that align with your career goals and qualifications.',
            ),
            BulletPoint(
              text:
                  'Career Advice: Our app provides tailored advice to help you improve your resume, prepare for interviews, and navigate your career path.',
            ),
            BulletPoint(
              text:
                  'Real-Time Updates: Receive instant notifications about new job openings that match your profile, ensuring you never miss an opportunity.',
            ),
            BulletPoint(
              text:
                  'User-Friendly Interface: Our intuitive and easy-to-use interface makes job searching a breeze, allowing you to focus on what matters most – finding your dream job.',
            ),
            SizedBox(height: 24),
            Text(
              'For Employers',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffe7895e)),
            ),
            SizedBox(height: 8),
            Text(
              'HireMe is also a powerful tool for companies looking to streamline their hiring process and find the best candidates. Our features include:',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(height: 8),
            BulletPoint(
              text:
                  'Smart Matching: Our sophisticated matching system ensures that you receive applications from candidates whose skills and experiences align with your job requirements.',
            ),
            BulletPoint(
              text:
                  'Efficient Recruitment: Save time and resources by narrowing down the candidate pool to those who are the best fit for your vacancies.',
            ),
            BulletPoint(
              text:
                  'Branch-Level Insights: Each branch of your company can access tailored recommendations for potential employees, helping you build a strong and capable team across all locations.',
            ),
            BulletPoint(
              text:
                  'Enhanced Communication: Easily communicate with potential hires through our integrated messaging system, making the recruitment process smooth and efficient.',
            ),
            SizedBox(height: 24),
            Text(
              'At HireMe, we believe that the right job can change a person’s life, and the right employee can transform a company. '
              'Join us on our mission to make the job search and hiring process smarter, faster, and more effective for everyone involved.',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.brightness_1, size: 10, color: Color(0xffe7895e)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
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
