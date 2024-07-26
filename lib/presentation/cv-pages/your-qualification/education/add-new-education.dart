import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';

class AddNewEducation extends StatefulWidget {
  const AddNewEducation({super.key});

  @override
  State<AddNewEducation> createState() => _AddNewEducationState();
}

class _AddNewEducationState extends State<AddNewEducation> {
  var selectedAcademyQualification;
  final TextEditingController schoolNameController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController awardedOnController = TextEditingController();

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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
                  'Add New Education ',
                  style: TextStyle(fontSize: 25, color: Color(0xffe7895e)),
                )
              ],
            ),
            const SizedBox(height: 80),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    DropdownButtonFormField(
                      dropdownColor: const Color(0xff1b1b1b),
                      style: const TextStyle(color: Colors.white),
                      hint: const Text('Academy Qualification',
                          style: TextStyle(
                            color: Color(0xffa6c5fe),
                          )),
                      items: [
                        "High School",
                        'Bachelor Degree',
                        'Diploma',
                        'Master',
                        'PHD',
                        'Training Course'
                      ]
                          .map((e) => DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          selectedAcademyQualification = val;
                        });
                      },
                      value: selectedAcademyQualification,
                      decoration: const InputDecoration(
                        fillColor: Color(0xff1b1b1b),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffa6c5fe),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xffe7895e),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                      ),
                    ),
                    const SizedBox(height: 20),
                    textFormFieldWidget(controller: schoolNameController, label: 'School Name'),
                        TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: startDateController,
                          decoration: const InputDecoration(
                            label: Text('Start Date'),
                            labelStyle: TextStyle(
                              color: Color(0xffa6c5fe),
                            ),
                            filled: true,
                            fillColor: Color(0xff1b1b1b),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffa6c5fe),
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffe7895e),
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                          ),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1980),
                                lastDate: DateTime(2025));
                    
                            if (pickedDate != null) {
                              setState(() {
                                startDateController.text =
                                    pickedDate.toString().substring(0, 11);
                              });
                            }
                          },
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          style: const TextStyle(color: Colors.white),
                          controller: awardedOnController,
                          decoration: const InputDecoration(
                            label: Text('Awarded on or expected'),
                            labelStyle: TextStyle(
                              color: Color(0xffa6c5fe),
                            ),
                            filled: true,
                            fillColor: Color(0xff1b1b1b),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffa6c5fe),
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xffe7895e),
                                ),
                                borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                          ),
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1980),
                                lastDate: DateTime(2025));
                    
                            if (pickedDate != null) {
                              setState(() {
                                awardedOnController.text =
                                    pickedDate.toString().substring(0, 11);
                              });
                            }
                          },
                        ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: button(text: 'Add +', onpressed: (){}),
            )

          ]),
        ));
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

Widget textFormFieldWidget(
    {required TextEditingController controller, required String label}) {
  return Column(
    children: [
      TextFormField(
        style: const TextStyle(color: Colors.white),
        controller: controller,
        validator: (v) {
          if (!(v!.contains('@'))) {
            return 'please enter a valid';
          }
          return null;
        },
        decoration: InputDecoration(
          label: Text(label),
          labelStyle: const TextStyle(
            color: Color(0xffa6c5fe),
          ),
          filled: true,
          fillColor: const Color(0xff1b1b1b),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffa6c5fe),
              ),
              borderRadius: BorderRadius.all(Radius.circular(20))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffe7895e),
              ),
              borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
      ),
      const SizedBox(
        height: 20,
      )
    ],
  );
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