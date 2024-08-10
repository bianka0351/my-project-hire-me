

import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/account-information/account-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/personal-information/personal-information.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/portfolio/portfolio.dart';
import 'package:hireme/presentation/user/cv-pages/basic-information/upload-image/upload-image.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/experience/experience.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/languages/languages.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/skills/skills.dart';


class MarketingDetailScreen extends StatefulWidget {


  const MarketingDetailScreen({super.key,});

  @override
  _MarketingDetailScreenState createState() => _MarketingDetailScreenState();
}

class _MarketingDetailScreenState extends State<MarketingDetailScreen> {
  int _currentStep = 0;
  late List<bool> _stepsChecked;

  @override
  void initState() {
    super.initState();
    _stepsChecked =
    List<bool>.filled(getImprovementSteps().length, false);
  }

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
      body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  'Steps to Improve Marketing',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffe7895e),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              height: double.infinity,
              color: const Color(0xff2c2f34),
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: const ColorScheme.light(
                    primary: Color(0xffe7895e), // لون الدائرة للأرقام
                  ),
                ),
                child: Stepper(

                  currentStep: _currentStep,
                  onStepTapped: (int index) {
                    setState(() {
                      _currentStep = index;
                    });
                  },
                  onStepContinue: () {
                    if (_currentStep < getImprovementSteps().length - 1) {
                      setState(() {
                        _currentStep++;
                      });
                    }
                  },
                  onStepCancel: () {
                    if (_currentStep > 0) {
                      setState(() {
                        _currentStep--;
                      });
                    }
                  },
                  steps:

                  getImprovementSteps()
                      .asMap()
                      .entries
                      .map((entry) {
                    int index = entry.key;
                    String step = entry.value;
                    return Step(
                      title: Text(
                        '${index + 1}. $step',
                        style: const TextStyle(color: Colors.white),
                      ),
                      content: CheckboxListTile(
                        title:
                        const Text(
                          'Mark as complete',
                          style: TextStyle(color: Colors.white),
                        ),
                        value: _stepsChecked[index],
                        onChanged: (bool? value) {
                          setState(() {
                            _stepsChecked[index] = value ?? false;
                          });
                        },
                        checkColor: Colors.white,
                        // Checkbox check color
                        activeColor: const Color(
                            0xffe7895e), // Checkbox color when active
                      ),
                      isActive: _currentStep >= index,
                      state: _stepsChecked[index]
                          ? StepState.complete
                          : StepState.indexed,
                    );
                  }).toList(),
                  controlsBuilder: (BuildContext context,
                      ControlsDetails details) {
                    return Row(
                      children: <Widget>[
                        button(text: 'Next', onpressed: details.onStepContinue),
                        const SizedBox(width: 20),
                        button(
                          text: 'Previous', onpressed: details.onStepCancel,),
                      ],
                    );
                  },
                ),
              ),
            ),

          )
        ],
      ),
    );
  }

  List<String> getImprovementSteps() {
    return [
      'Foundations and Basics',
      'Digital Marketing Essentials',
      'Data Analytics and Market Research',
      'Branding and Communication',
      'Advanced Strategies and Campaigns',
    ];
  }
}

Widget button
(
{
required
String
text, required, required Function()? onpressed}) {
return Container(
height: 30,
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(25),

color: const Color(0xffe7895e)),
clipBehavior: Clip.antiAlias,
child: MaterialButton(
onPressed: onpressed,

minWidth: 50,
child: Text(
text,
style: const TextStyle(
fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
),
),
);
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
