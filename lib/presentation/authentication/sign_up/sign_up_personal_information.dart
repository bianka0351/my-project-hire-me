import 'package:flutter/material.dart';
import 'package:hireme/presentation/home_layout_screen.dart';

class SignUpPersonalInformation extends StatefulWidget {
  const SignUpPersonalInformation({super.key});

  @override
  State<SignUpPersonalInformation> createState() =>
      _SignUpPersonalInformationState();
}

class _SignUpPersonalInformationState extends State<SignUpPersonalInformation> {
  final TextEditingController experienceController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  var selectedScientificLevel;
  var selectedMilitaryService;
  bool ismale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Stack(alignment: AlignmentDirectional.center, children: [
        Container(
          width: double.infinity,
          height: 260,
          decoration: const BoxDecoration(
            color: Color(0xff3a5d93),
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
                      child: Divider(thickness: 2, color: Color(0xffe7895e)),
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
                color:  Color(0xff2c2f34),
              ),
              Padding(
                padding: const EdgeInsets.all(35),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      textFormFieldWidget(
                          controller: experienceController,
                          label: 'Years of Experience'),
                      DropdownButtonFormField(
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
                        width: 350,
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
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DropdownButtonFormField(
                        dropdownColor: const Color(0xff1b1b1b),
                        style: const TextStyle(color: Colors.white),
                        hint: const Text('Military Service',
                            style: TextStyle(
                              color: Color(0xffa6c5fe),
                            )),
                        items: [
                          "Exempt (single allowance)",
                          'Finished ',
                          'By Service',
                          'Delayed',
                          'Feminine'
                        ]
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: Text(e),
                                ))
                            .toList(),
                        onChanged: (val) {
                          setState(() {
                            selectedMilitaryService = val;
                          });
                        },
                        value: selectedMilitaryService,
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
                                        const HomeLayoutScreen()));
                          })
                    ],
                  ),
                ),
              )
            ],
          )),
    ]));
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
color: const Color(0xffe7895e)
    ),
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
