import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hireme/presentation/company/edit_company_information.dart';
import 'package:hireme/presentation/company/screens_company/announcements/announcements.dart';
import 'package:hireme/presentation/company/screens_company/candidates/candidates.dart';
import 'package:hireme/presentation/company/screens_company/settings_company/settings_screen_company.dart';

class HomeLayoutScreenCompany extends StatefulWidget {
  const HomeLayoutScreenCompany({super.key});

  @override
  State<HomeLayoutScreenCompany> createState() =>
      _HomeLayoutScreenCompanyState();
}

class _HomeLayoutScreenCompanyState extends State<HomeLayoutScreenCompany> {
  int currentIndex = 0;
  List<Widget> screens = [
    Candidates(),
    const Announcements(),
    const SettingsScreenCompany(),
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
                        image: AssetImage('assets/images/company.jpg'),
                        fit: BoxFit.fill)),
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 80),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/loGo.jpeg',
                      ),
                      radius: 40,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Smart Solution',
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
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const EditCompanyInformation()),
                            );
                          },
                          child: const Row(
                            children: [
                              Icon(
                                Icons.account_balance,
                                color: Color(0xffa6c5fe),
                                size: 20,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Company Information ',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xffa6c5fe)),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
        activeColor: const Color(0xff3a5d93),
        height: 50,
        backgroundColor: const Color(0xff3a5d93),
        items: const [
          TabItem(
              icon: Icon(Icons.groups, color: Colors.white),
              title: 'Candidates'),
          TabItem(
              icon: Icon(Icons.speaker_notes, color: Colors.white),
              title: 'Announcements'),
          TabItem(
              icon: Icon(Icons.settings, color: Colors.white),
              title: 'Settings'),
        ],
        onTap: (int i) {
          setState(() {
            currentIndex = i;
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



