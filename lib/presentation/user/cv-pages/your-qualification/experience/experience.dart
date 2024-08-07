import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/user/cv-pages/your-qualification/experience/add-new-experience.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Experience extends StatefulWidget {
  Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  List<String> data = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      data = prefs.getStringList('data') ?? [];
    });
  }

  Future<void> _deleteData(int index) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> _data = prefs.getStringList('data') ?? [];
    _data.removeAt(index);
    await prefs.setStringList('data', _data);
    setState(() {
      data = _data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2c2f34),
        appBar: AppBar(
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
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          const SizedBox(height: 20),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                MyFlutterApp.award,
                color: Color(0xffe7895e),
                size: 30,
              ),
              SizedBox(width: 15),
              Text(
                'Work Experience ',
                style: TextStyle(fontSize: 25, color: Color(0xffe7895e)),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Adding all work experiences will increase your chances to find better jobs',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Color(0xffe7895e)),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color(0xff1b1b1b),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  final entryParts = data[index].split(', ');
                  return GestureDetector(
                    onLongPress: () => _deleteData(index),
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 16.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: entryParts.map((part) {
                          final splitIndex = part.indexOf(': ');
                          final label = part.substring(0, splitIndex + 1);
                          final value = part.substring(splitIndex + 2);

                          return RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: label,
                                  style: TextStyle(
                                      color: Color(0xffa6c5fe), fontSize: 15),
                                ),
                                TextSpan(
                                  text: '    ',
                                ),
                                TextSpan(
                                  text: value,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddNewExperience()),
                ).then((_) => _loadData());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffe7895e),
                shape: CircleBorder(),
                minimumSize: Size(50, 50),
              ),
              child: Icon(
                Icons.add,
                size: 32,
                color: Colors.white,
              ),
            ),
          ),
        ]));
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

Widget button({required String text, required, required Function() onpressed}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
// gradient: LinearGradient(
//     begin: Alignment.topLeft,
//     end: Alignment.bottomRight,
//     colors: [Color(0xff3a5d93), Color(0xffe7895e)])
        color: const Color(0xffe7895e)),
    clipBehavior: Clip.antiAlias,
    child: MaterialButton(
      onPressed: onpressed,
      height: 40,
      minWidth: 320,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
  );
}

Widget malefemalewidget({
  required String text,
  required Function() ontap,
  required Color text_color,
  required Color container_color,
}) {
  return GestureDetector(
    onTap: ontap,
    child: Container(
        height: 30,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: container_color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: text_color, fontSize: 16),
          ),
        )),
  );
}
