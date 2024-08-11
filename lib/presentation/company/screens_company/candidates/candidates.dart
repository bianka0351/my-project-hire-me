import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hireme/presentation/company/screens_company/candidates/bloc/candidate_bloc.dart';
import 'package:hireme/presentation/company/screens_company/candidates/candidates_details.dart';
import 'package:hireme/unified_api/result_builder/result_builder.dart';

class Candidates extends StatefulWidget {
  Candidates({super.key});

  @override
  State<Candidates> createState() => _CandidatesState();
}

class _CandidatesState extends State<Candidates> {
  String? selectedCity;

  String selectedAge = 'Any';
  String? selectedGender;

  String selectedSkill = 'Any';

  Color containerColor = const Color(0xff1b1b1b);

  var bloc = CandidateBloc();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bloc.add(GetAllCandidates());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Scaffold(
          backgroundColor: const Color(0xff2c2f34),
          body: BlocBuilder<CandidateBloc, CandidateState>(
            builder: (context, state) {
              return ResultBuilder(
                result: state.candidates,
                onError: () => context.read<CandidateBloc>().add(GetAllCandidates()),
                success: (data) => Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            filterDropdown(
                              'City',
                              selectedCity,
                              (String? newValue) {
                                setState(() {
                                  if (newValue == "Any") {
                                    selectedCity = null;
                                    containerColor = const Color(0xffe7895e);
                                  } else {
                                    selectedCity = newValue!;
                                    containerColor = const Color(0xffe7895e);
                                  }
                                });
                              },
                              ['Any', "Damascus", "Aleppo", "Homs", "Hama", "Latakia"],
                            ),
                            filterDropdown(
                              'Gender',
                              selectedGender,
                              (String? newValue) {
                                setState(() {
                                  selectedGender = newValue!;
                                });
                              },
                              ['Any', 'Female', 'Male'],
                            ),
                            // filterDropdown(
                            //   'Skill',
                            //   selectedSkill,
                            //   (String? newValue) {
                            //     setState(() {
                            //       selectedSkill = newValue!;
                            //     });
                            //   },
                            //   ['Any', 'Skill A', 'Skill B', 'Skill C'],
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {
                            context.read<CandidateBloc>().add(GetAllCandidates(city: selectedCity, gender: selectedGender));
                          },
                          child: Container(
                            height: 35,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: const Color(0xffe7895e),
                              border: const Border(
                                right: BorderSide(color: Color(0xffe7895e), width: 5),
                              ),
                            ),
                            child: const Center(
                                child: Text(
                              'Apply Filters',
                              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                            )),
                          ),
                        )),
                    const SizedBox(height: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: ListView.builder(
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CandidatesDetails(
                                                userId: data[index].user_id,
                                              )),
                                    );
                                  },
                                  child: Container(
                                    height: 200,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xff1b1b1b),
                                        border: const Border(right: BorderSide(color: Color(0xffe7895e), width: 5))),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              CircleAvatar(
                                                backgroundImage: AssetImage('assets/images/personal_image.jpg'),
                                                backgroundColor: Color(0xff3a5d93),
                                                radius: 40,
                                              ),
                                              const SizedBox(height: 20),
                                              Container(
                                                width: 120,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  border: Border.all(
                                                    color: const Color(0xffe7895e),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    data[index].firstName + data[index].lastName,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              cvDetails(text1: 'Gender :', text2: ' ${data[index].gender}'),
                                              const Divider(
                                                color: Color(0xffe7895e),
                                                thickness: 2,
                                                endIndent: 20,
                                              ),
                                              cvDetails(text1: 'Location :', text2: ' ${data[index].address}'),
                                              const Divider(
                                                color: Color(0xffe7895e),
                                                thickness: 2,
                                                endIndent: 20,
                                              ),
                                              cvDetails(text1: 'Main Skill :', text2: ' ${data[index].best_skill}'),
                                              const Divider(
                                                color: Color(0xffe7895e),
                                                thickness: 2,
                                                endIndent: 20,
                                              ),
                                              cvDetails(text1: 'Email :', text2: ' ${data[index].email}')
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}

Widget cvDetails({required String text1, required String text2}) {
  return Row(
    children: [
      Text(
        text1,
        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
      ),
      Text(
        text2,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    ],
  );
}

Widget filterDropdown(String label, String? value, ValueChanged<String?> onChanged, List<String> items) {
  Color containerColor = value != null && value != 'Any'
      ? const Color(0xffe7895e) // اللون البرتقالي عند اختيار عنصر
      : const Color(0xff1b1b1b); // اللون الافتراضي

  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: containerColor, // تطبيق اللون بناءً على العنصر المختار
        border: const Border(
          right: BorderSide(color: Color(0xffe7895e), width: 5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            Icon(getIcon(label), color: Colors.white, size: 20),
            const SizedBox(width: 10),
            DropdownButton<String>(
              value: value == 'Any' ? null : value,
              dropdownColor: const Color(0xff2c2f34),
              onChanged: (String? newValue) {
                onChanged(newValue);
                // تأكد من إعادة بناء الـ widget لتحديث اللون
              },
              hint: Text(label, style: const TextStyle(color: Colors.white, fontSize: 15)),
              underline: const SizedBox(),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              items: items.map<DropdownMenuItem<String>>((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item, style: const TextStyle(color: Colors.white)),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    ),
  );
}

IconData getIcon(String label) {
  switch (label) {
    case 'City':
      return Icons.location_city;
    case 'Gender':
      return Icons.people;

    case 'Skill':
      return Icons.work;
    default:
      return Icons.filter_list;
  }
}
