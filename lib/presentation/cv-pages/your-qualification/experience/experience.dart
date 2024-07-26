import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/cv-pages/your-qualification/experience/add-new-experience.dart';

class Experience extends StatelessWidget {
   Experience({super.key});
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
        value?
         Column(
            children: [
              SizedBox(height: 120),
              Text(
                'No work experience added',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Color(0xffa6c5fe)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Adding all work experiences help the companies to know more about you and will increase your chances to find better jobs ',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15, color: Color(0xffa6c5fe)),
                ),
              ),
              SizedBox(height: 260),
            ],
          ):
        Expanded(
          child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(height: 20),
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10,top: 15),
                          child: Column(
                            children: [
                              Text('05-2022',style: TextStyle(color: Colors.white),),
                              Text('01-2023',style: TextStyle(color: Colors.white),),
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        InkWell(
                          onTap: (){}
                          ,child: Container(
                            width: 250,
                            height: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: const Color(0xff1b1b1b)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'manager assistant',
                                        style:
                                        TextStyle(color: Colors.white,fontSize: 20),

                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(

                                            Icons.delete_forever,
                                            color:  Color(0xffa6c5fe),
                                            size: 20,
                                          ))
                                    ],
                                  ),

                                ),
                                const Divider(color:  Color(0xffe7895e),indent: 20,endIndent: 100),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child:
                                  Row(children: [
                                    Text('Company:' ,style:
                                  TextStyle(color:  Color(0xffa6c5fe),fontSize: 15)),
                                    SizedBox(width: 10),
                                    Text('Olacc' ,style:
                                    TextStyle(color: Colors.white,fontSize: 15)),
                                  ],),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child:
                                  RichText(text : TextSpan(children:<TextSpan> [
                                 TextSpan( text:'Description:' ,style:
                                 TextStyle(color:  Color(0xffa6c5fe),fontSize: 15)),

                                    TextSpan(text: ' manager assistant in computer training project  ' ,style:
                                    TextStyle(color: Colors.white,fontSize: 15),

                                    ),
                                  ]),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],

                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    const SizedBox(height: 15)
                  ],
                );
              }),
        ),
          button(
              text: 'Add New Experience',
              onpressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddNewExperience()));
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
