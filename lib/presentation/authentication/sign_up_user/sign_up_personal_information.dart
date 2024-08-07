import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hireme/presentation/authentication/bloc/auth_bloc.dart';
import 'package:hireme/presentation/user/home_layout_screen.dart';


class SignUpPersonalInformation extends StatefulWidget {
  SignUpPersonalInformation({
    super.key,
    required this.userNameController,
    required this.passwordController,
    required this.firstNameController,
    required this.lastNameController,
    required this.homeAdressController,
    required this.emailController,
    required this.selectedCity,
  });

  final String userNameController;
  final String passwordController;
  final String firstNameController;
  final String lastNameController;
  final String homeAdressController;
  final String emailController;
  final dynamic selectedCity;

  @override
  State<SignUpPersonalInformation> createState() =>
      _SignUpPersonalInformationState();
}

class _SignUpPersonalInformationState extends State<SignUpPersonalInformation> {
  late final DateTime birthDate;
  final TextEditingController birthdayController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();
  var selectedScientificLevel;
  bool ismale = true;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthLoading) {
          BotToast.showLoading(clickClose: false);
        } else if (state is AuthSuccess) {
          BotToast.closeAllLoading();
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const HomeLayoutScreen()));
        } else {
          BotToast.closeAllLoading();
          BotToast.showText(text: 'Try Again');
        }
      },
      child: Scaffold(
          backgroundColor: Color(0xff2c2f34),
          body: Column(children: [
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
                            child:
                                Divider(thickness: 2, color: Color(0xffe7895e)),
                          ),
                          iconWidget(
                              icon: Icons.person_2_outlined,
                              text: 'personal',
                              text1: 'information',
                              color: const Color(0xffe7895e)),
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
                      color: Color(0xff2c2f34),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Form(
                            key: formState,
                            child: Column(
                              children: [
                                DropdownButtonFormField(
                                  validator: (value) {
                                    if (value == null) {
                                      return 'Please enter a valid';
                                    }
                                    return null;
                                  },
                                  dropdownColor: const Color(0xff1b1b1b),
                                  style: const TextStyle(color: Colors.white),
                                  hint: const Text('Scientific level',
                                      style: TextStyle(
                                        color: Color(0xffa6c5fe),
                                      )),
                                  items: [
                                    "Nothing",
                                    'Secondary Certificate',
                                    'Institute Certificate',
                                    'College Degree',
                                    'Diploma',
                                    'Master Degree',
                                    'Ph.D'
                                  ]
                                      .map((e) => DropdownMenuItem(
                                            value: e,
                                            child: Text(e),
                                          ))
                                      .toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      selectedScientificLevel = val;
                                    });
                                  },
                                  value: selectedScientificLevel,
                                  decoration: const InputDecoration(
                                    filled: true,
                                    fillColor: Color(0xff1b1b1b),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xffa6c5fe),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xffe7895e),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                    errorBorder: OutlineInputBorder(),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                TextField(
                                  style: const TextStyle(color: Colors.white),
                                  controller: birthdayController,
                                  decoration: const InputDecoration(
                                    label: Text('Birthday'),
                                    labelStyle: TextStyle(
                                      color: Color(0xffa6c5fe),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xff1b1b1b),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xffa6c5fe),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xffe7895e),
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(30))),
                                  ),
                                  onTap: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime(1980),
                                        lastDate: DateTime(2025));

                                    if (pickedDate != null) {
                                      setState(() {
                                        birthDate=pickedDate;
                                        birthdayController.text = pickedDate
                                            .toString()
                                            .substring(0, 11);
                                      });
                                    }
                                  },
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  width: 350,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: const Color(0xff1b1b1b),
                                      border: Border.all(
                                        color: const Color(0xffa6c5fe),
                                      )),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          'Gender',
                                          style: TextStyle(
                                              color: Color(0xffa6c5fe),
                                              fontSize: 17),
                                        ),
                                        const SizedBox(
                                          height: 10,
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
                                              text_color: ismale
                                                  ? const Color(0xff3a5d93)
                                                  : const Color(0xffa6c5fe),
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
                                              text_color: ismale
                                                  ? const Color(0xffa6c5fe)
                                                  : const Color(0xff3a5d93),
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
                                const SizedBox(
                                  height: 20,
                                ),
                                textFormFieldWidget(
                                    controller: phoneController,
                                    label: 'Phone_Number'),
                                const SizedBox(
                                  height: 50,
                                ),
                                button(
                                    text: 'continue',
                                    onpressed: () {
                                      if (formState.currentState!.validate()) {
                                        if (birthDate != null && selectedScientificLevel != null) {
                                          context.read<AuthBloc>().add(
                                              CreateEvent(
                                                  password: widget.passwordController,
                                                  username: widget.userNameController,
                                                  firstName: widget.firstNameController,
                                                  lastName: widget.lastNameController,
                                                  email: widget.emailController,
                                                  birthDate: birthDate!,
                                                  address: widget.homeAdressController,
                                                  city: widget.selectedCity,
                                                  educationLevel: selectedScientificLevel,
                                                  gender: ismale ? 'Male' : 'Female',
                                                  phone_number: phoneController.text));
                                        } else {
                                          BotToast.showText(text: 'Please fill all required fields');
                                        }
                                      }

                                    })
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ])),
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
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter a valid';
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
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
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
