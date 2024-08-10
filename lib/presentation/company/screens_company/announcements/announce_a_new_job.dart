import 'package:flutter/material.dart';
import 'package:hireme/presentation/company/home_layout_screen_company.dart';

class AnnounceANewJob extends StatefulWidget {
  const AnnounceANewJob({super.key});

  @override
  State<AnnounceANewJob> createState() => _AnnounceAJobState();
}

class _AnnounceAJobState extends State<AnnounceANewJob> {
  final _formKey = GlobalKey<FormState>();
  final educationalLevelController = TextEditingController();
  final experienceController = TextEditingController();
  final salaryController = TextEditingController();
  final typeOfEmploymentController = TextEditingController();
  final jobDescriptionController = TextEditingController();

  String? jobNatureSelected;
  String? jobTitleSelected;
  String? preferredToKnowSelected;
  String? genderSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: const Color(0xff2c2f34),
      body: Column(
        children: [
          const Text('Announce A Job',
              style: TextStyle(color: Color(0xffe7895e), fontSize: 25)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      _buildDropdown(
                        jobNatureSelected,
                        (val) {
                          setState(() {
                            jobNatureSelected = val;
                          });
                        },
                        'Job Nature',
                        ['IT', 'Education', 'Hospitality'],
                      ),
                      const SizedBox(height: 15),
                      _buildDropdown(jobTitleSelected, (val) {
                        setState(() {
                          jobTitleSelected = val;
                        });
                      }, 'Job Title', [
                        'Software Engineer',
                        'Designer',
                        'Product Manager',
                        'QA Tester'
                      ]),
                      const SizedBox(height: 15),
                      _buildDropdown(
                        preferredToKnowSelected,
                        (val) {
                          setState(() {
                            preferredToKnowSelected = val;
                          });
                        },
                        'Preferred To Know',
                        [
                          'Communication',
                          'Teamwork',
                          'Problem-Solving',
                          'Leadership'
                        ],
                      ),
                      const SizedBox(height: 15),
                      _buildDropdown(
                        genderSelected,
                        (val) {
                          setState(() {
                            genderSelected = val;
                          });
                        },
                        'Gender',
                        ['Male', 'Female', 'Any'],
                      ),
                      const SizedBox(height: 15),
                      _buildTextFormField(
                          educationalLevelController, 'Educational Level'),
                      const SizedBox(height: 15),
                      _buildTextFormField(experienceController, 'Experience'),
                      const SizedBox(height: 15),
                      _buildTextFormField(salaryController, 'Salary'),
                      const SizedBox(height: 15),
                      _buildTextFormField(
                          typeOfEmploymentController, 'Type Of Employment'),
                      const SizedBox(height: 15),
                      _buildTextFormField(
                          jobDescriptionController, 'Job Description'),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: button(text: 'Add', onpressed: () {}),
          )
        ],
      ),
    );
  }

  Widget _buildTextFormField(TextEditingController controller, String labelText,
      [bool isListView = false]) {
    return Container(
      height: isListView ? 100 : null, // Set height only if isListView is true
      child: TextFormField(
        controller: controller,
        maxLines: isListView ? null : 1,
        decoration: InputDecoration(
          label: Text(labelText),
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
          errorBorder: const OutlineInputBorder(),
        ),
        style: const TextStyle(color: Colors.white),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter some text';
          }
          return null;
        },
      ),
    );
  }

  Widget _buildDropdown(
    String? selectedValue,
    ValueChanged<String?> onChanged,
    String hintText,
    List<String> items,
  ) {
    return DropdownButtonFormField<String>(
      dropdownColor: const Color(0xff1b1b1b),
      style: const TextStyle(color: Colors.white),
      hint: Text(
        hintText,
        style: const TextStyle(color: Color(0xffa6c5fe), fontSize: 17),
      ),
      items: items
          .map((e) => DropdownMenuItem(
                value: e,
                child: Text(e),
              ))
          .toList(),
      onChanged: onChanged,
      value: selectedValue,
      validator: (value) {
        if (value == null) {
          return 'Please select an option';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelStyle: TextStyle(
          color: Color(0xffa6c5fe),
        ),
        filled: true,
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
        errorBorder: OutlineInputBorder(),
      ),
    );
  }
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
      minWidth: 280,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
    ),
  );
}
