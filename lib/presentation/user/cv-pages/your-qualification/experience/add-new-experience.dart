import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddNewExperience extends StatefulWidget {
  AddNewExperience({super.key});

  @override
  State<AddNewExperience> createState() => _AddNewExperienceState();
}

class _AddNewExperienceState extends State<AddNewExperience> {
  final TextEditingController jobTitleController = TextEditingController();
  final TextEditingController companyController = TextEditingController();

  final TextEditingController startDateController = TextEditingController();

  final TextEditingController enddateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  Future<void> _saveData(String the_data) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> _data = prefs.getStringList('data') ?? [];
    _data.add(the_data);
    await prefs.setStringList('data', _data);
  }

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
                  width: 180,
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
                  MyFlutterApp.award,
                  color: Color(0xffe7895e),
                  size: 30,
                ),
                SizedBox(width: 15),
                Text(
                  'Work Experience',
                  style: TextStyle(fontSize: 25, color: Color(0xffe7895e)),
                )
              ],
            ),
            const SizedBox(height: 50),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    textFormFieldWidget(
                        controller: jobTitleController, label: 'Job Title'),
                    textFormFieldWidget(
                        controller: companyController, label: 'Company'),
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
                    Row(
                      children: [
                        Container(
                          child: TextField(
                            style: const TextStyle(color: Colors.white),
                            controller: enddateController,
                            decoration: const InputDecoration(
                              label: Text('End Date'),
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
                                  enddateController.text =
                                      pickedDate.toString().substring(0, 11);
                                });
                              }
                            },
                          ),
                          width: 220,
                        ),
                        SizedBox(width: 20),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 80,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border(
                                    left: (BorderSide(
                                      color: Color(0xffa6c5fe),
                                    )),
                                    right: BorderSide(
                                      color: Color(0xffa6c5fe),
                                    ),
                                    top: BorderSide(
                                      color: Color(0xffa6c5fe),
                                    ),
                                    bottom: BorderSide(
                                      color: Color(0xffa6c5fe),
                                    )),
                                color: const Color(0xff1b1b1b)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Text(
                                    'Until Now',
                                    style: TextStyle(
                                      color: Color(0xffa6c5fe),
                                    ),
                                  ),
                                  Icon(
                                    Icons.add_task,
                                    color: Color(0xffa6c5fe),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      minLines: 1,
                      maxLines: 10,
                      style: const TextStyle(color: Colors.white),
                      controller: descriptionController,
                      validator: (v) {
                        if (!(v!.contains('@'))) {
                          return 'please enter a valid';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                            bottom: 50, top: 50, right: 50, left: 10),
                        label: Padding(
                          padding: EdgeInsets.only(
                            bottom: 70,
                          ),
                          child: Text('Description'),
                        ),
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
                    ),
                    SizedBox(height: 20)
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: button(
                  text: 'Add +',
                  onpressed: () {
                    final entry =
                        'Job Title: ${jobTitleController.text}, Company: ${companyController.text}, Start Date: ${startDateController.text}, End Date: ${enddateController.text}, Description: ${descriptionController.text}';
                    _saveData(entry);
                    Navigator.pop(context);
                  }),
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
