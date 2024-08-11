import 'package:flutter/material.dart';
import 'package:hireme/presentation/introduction.dart';
import 'package:hireme/presentation/main.dart';
import 'package:hireme/presentation/user/screens/settings/about_us_page.dart';
import 'package:hireme/presentation/user/screens/settings/privacy_policy_page.dart';

class SettingsScreenCompany extends StatelessWidget {
  const SettingsScreenCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            ListTile(
              title: const Text(
                'Languages',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              subtitle: Text(
                'Choose the application language',
                style: TextStyle(color: Colors.grey[400]),
              ),
              leading: const Icon(
                Icons.language_outlined,
                color: Color(0xffe7895e),
                size: 30,
              ),
              onTap: () {},
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  button(text: 'English', onpressed: () {}),
                  const SizedBox(width:20),
                  button(text: 'Arabic', onpressed: () {}),

                ]),
            const SizedBox(height:10),
            const Divider(
              color: Color(0xffe7895e),
              endIndent: 30,
              indent: 30,
            ),
            ListTile(
              title: const Text(
                'Privacy Policies',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              subtitle: Text(
                'This is how we handle your data.',
                style: TextStyle(color: Colors.grey[400]),
              ),
              leading: const Icon(
                Icons.policy,
                color: Color(0xffe7895e),
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
                );
              },
            ),
            const Divider(
              color: Color(0xffe7895e),
              endIndent: 30,
              indent: 30,
            ),
            ListTile(
              title: const Text(
                'About Us',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              subtitle: Text(
                'Enter here to know more about us.',
                style: TextStyle(color: Colors.grey[400]),
              ),
              leading: const Icon(
                Icons.info,
                color: Color(0xffe7895e),
                size: 30,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              },
            ),
            const Divider(
              color: Color(0xffe7895e),
              endIndent: 30,
              indent: 30,
            ),
            ListTile(
              title: const Text(
                'Log Out',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              subtitle: Text(
                'log out of the app.',
                style: TextStyle(color: Colors.grey[400]),
              ),
              leading: const Icon(
                Icons.logout,
                color: Color(0xffe7895e),
                size: 30,
              ),
              onTap: () async {
                await prefs.clear();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Introduction()),
                );
              },
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

Widget button(
{required String text, required, required Function()? onpressed}) {
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