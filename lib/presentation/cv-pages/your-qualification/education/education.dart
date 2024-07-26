import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/cv-pages/your-qualification/education/add-new-education.dart';

class Education extends StatelessWidget {
  Education({super.key});

  bool value = false;

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
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    MyFlutterApp.graduation_cap,
                    color: Color(0xffe7895e),
                    size: 30,
                  ),
                  SizedBox(width: 15),
                  Text(
                    'Education ',
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
                  'Adding your certificates will increase your chances to get the best job',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Color(0xffe7895e)),
                ),
              ),
              value
                  ? Column(
                      children: [
                        SizedBox(height: 120),
                        Text(
                          'No certificate added',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(fontSize: 15, color: Color(0xffa6c5fe)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            'Adding all certificate help the companies to know more about you and will increase your chances to find better job ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15, color: Color(0xffa6c5fe)),
                          ),
                        ),
                        SizedBox(height: 260),
                      ],
                    )
                  :
              Expanded(
                      child: ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                SizedBox(height: 20),
                                Container(
                                  width: 250,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: const Color(0xff1b1b1b)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20),
                                        child: Row(
                                          children: [
                                            Text(
                                              'Training Course',
                                              style:
                                                  TextStyle(color: Colors.white,fontSize: 20),

                                            ),
                                            IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                  Icons.restore_from_trash,
                                                  color: Colors.white,
                                                ))
                                          ],
                                        ),

                                      ),
                                      Divider(color:  Color(0xffe7895e),indent: 2,endIndent: 5)
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15)
                              ],
                            );
                          }),
                    ),
              button(
                  text: 'Add New Education',
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddNewEducation()));
                  })
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
