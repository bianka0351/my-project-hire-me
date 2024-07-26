import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController homeAdressController = TextEditingController();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  var selectedCity;
  bool ismale = true;
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
        padding: const EdgeInsets.only(bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xffe7895e),
                  size: 35,
                ),
                SizedBox(width: 5),
                Text(
                  'Personal Information ',
                  style: TextStyle(fontSize: 25, color: Color(0xffe7895e)),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Adding your personal information is very important',
              style: TextStyle(fontSize: 15, color: Color(0xffe7895e)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      textFormFieldWidget(
                          controller: firstNameController, label: 'First Name'),
                      textFormFieldWidget(
                          controller: lastNameController, label: 'Last Name'),
                      textFormFieldWidget(
                          controller: homeAdressController, label: 'Home Adress'),
                      textFormFieldWidget(controller: emailController, label: 'Email'),
                      DropdownButtonFormField(
                        dropdownColor: const Color(0xff1b1b1b),
                        style: const TextStyle(color: Colors.white),
                        hint: const Text('City',
                            style: TextStyle(
                              color: Color(0xffa6c5fe),
                            )),
                        items: ["Damascus", 'Aleppo']
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            selectedCity = val;
                          });
                        },
                        value: selectedCity,
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
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        style: const TextStyle(color: Colors.white),
                        controller: dateController,
                        decoration: const InputDecoration(
                          label: Text('Select Date'),
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
                              dateController.text =
                                  pickedDate.toString().substring(0, 11);
                            });
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 400,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xff1b1b1b),
                            border: Border.all(
                              color: const Color(0xffa6c5fe),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Gender',
                                style: TextStyle(
                                    color: Color(0xffa6c5fe), fontSize: 17),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  malefemalewidget(
                                    text: 'Male',
                                    ontap: () {
                                      ismale = true;
                                      setState(() {});
                                    },
                                    text_color:ismale?const Color(0xff3a5d93): const Color(0xffa6c5fe),
                                    container_color: ismale
                                        ? Colors.white
                                        : const Color(0xff2c2f34),
                                  ),
                                  malefemalewidget(
                                    text: 'Female',
                                    ontap: () {
                                      ismale = false;
                                      setState(() {});
                                    },
                                    text_color:ismale? const Color(0xffa6c5fe):const Color(0xff3a5d93),
                                    container_color: ismale
                                        ? const Color(0xff2c2f34)
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            button(
                text: 'Save',
                onpressed: () {

                })
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

Widget button({required String text, required, required Function() onpressed}) {
return Container(
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(15),
// gradient: LinearGradient(
//     begin: Alignment.topLeft,
//     end: Alignment.bottomRight,
//     colors: [Color(0xff3a5d93), Color(0xffe7895e)])
color: Color(0xffe7895e)),
clipBehavior: Clip.antiAlias,
child: MaterialButton(
onPressed: onpressed,
height: 40,
minWidth: 320,
child: Text(
text,
style: const TextStyle(
fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
),
),
);
}