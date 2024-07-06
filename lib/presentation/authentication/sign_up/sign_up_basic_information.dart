import 'package:flutter/material.dart';
import 'package:hireme/presentation/authentication/sign_up/sign_up_personal_information.dart';

class SignUpBasicInformation extends StatefulWidget {
  const SignUpBasicInformation({super.key});

  @override
  State<SignUpBasicInformation> createState() => _SignUpBasicInformationState();
}

class _SignUpBasicInformationState extends State<SignUpBasicInformation> {
  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController homeAdressController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  var selectedCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Stack(alignment: AlignmentDirectional.center, children: [
            ClipPath(
              clipper: ContainerClipper(),
              child: Container(
                  width: double.infinity,
                  height: 260,
                  color: const Color(0xff3a5d93)),
            ),
            ClipPath(
              clipper: ContainerClipper(),
              child: Container(
                width: double.infinity,
                height: 250,
                color: const Color(0xff3a5d93),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo_name1.png',
                    width: 150,
                    height: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Two simple steps to register',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        iconWidget(
                            icon: Icons.lock_open,
                            text: 'basic',
                            text1: 'information',
                            color: const Color(0xffe7895e)),
                        const SizedBox(
                          width: 80,
                          child: Divider(
                            thickness: 2,
                            color: Color(0xff1b395f),
                          ),
                        ),
                        iconWidget(
                          icon: Icons.person_2_outlined,
                          text: 'personal',
                          text1: 'information',
                          color: const Color(0xffd6d8d7),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Container(
                    color: const Color(0xff2c2f34),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(35),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          textFormFieldWidget(
                              controller: firstNameController,
                              label: 'First Name'),
                          textFormFieldWidget(
                              controller: lastNameController,
                              label: 'Last Name'),
                          textFormFieldWidget(
                              controller: homeAdressController,
                              label: 'Home Adress'),
                          textFormFieldWidget(
                              controller: emailController, label: 'Email'),
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
                          const SizedBox(
                            height: 20,
                          ),
                          button(
                              text: 'continue',
                              onpressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignUpPersonalInformation()));
                              })
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

Widget iconWidget(
    {required IconData icon,
    required String text,
    required String text1,
    required Color color}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(30)),
          child: Icon(
            icon,
            size: 25,
          )),
      const SizedBox(
        height: 2,
      ),
      Text(
        text,
        style: TextStyle(
          fontSize: 8,
          color: color,
        ),
      ),
      Text(
        text1,
        style: TextStyle(
          fontSize: 8,
          color: color,
        ),
      )
    ],
  );
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
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff3a5d93), Color(0xffe7895e)])),
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

class ContainerClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;
    var path = Path();
    path.lineTo(0, height - 40);
    path.quadraticBezierTo(width / 2, height, width, height - 40);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
