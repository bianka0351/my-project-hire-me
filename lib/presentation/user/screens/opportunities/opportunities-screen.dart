import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/models/get_all_branch_response/get_all_branch_response.dart';
import 'package:hireme/models/get_all_skills_response/get_all_skills_response.dart';
import 'package:hireme/presentation/user/screens/opportunities/opportunity_details.dart';

import '../../../../models/get_suitable_job_announcements_for_user/get_suitable_job_announcements_for_user.dart';
import '../../../../repo/main_repo.dart';

class OpportunitiesScreen extends StatefulWidget {
  const OpportunitiesScreen({super.key});

  @override
  State<OpportunitiesScreen> createState() => _OpportunitiesScreenState();
}

class _OpportunitiesScreenState extends State<OpportunitiesScreen> {
  String selectedCity = 'Any';
  String selectedSalary = 'Any';
  String selectedCompany = 'Any';
  String selectedSkill = 'Any';

  GetSuitableJobAnnouncementsForUser? jobs;
  bool loading = false;

  GetAllBranchResponse? branches;
  List<String> branch = [];
  GetAllSkillsResponse? skills;
  List<String> skill = [];

  fetchJobs() async {
    var response = await MainRepo().getJobs();
    setState(() {
      jobs = response;
      loading = true;
    });
  }

  fetchBranch() async {
    var response = await MainRepo().getBranches();
    setState(() {
      branches = response;
      branch = List.generate(branches!.branches!.length, (i) => branches!.branches![i].name!);
    });
  }

  fetchSkills() async {
    var response = await MainRepo().getSkills();
    setState(() {
      skills = response;
      skill = List.generate(skills!.skills!.length, (i) => skills!.skills![i].skillName!);
    });
  }

  fetchFilteredJobs() async {
    var response = await MainRepo().getFilteredJobs(
        terms: selectedSkill,
        salary: selectedSalary,
        city: selectedCity,
        branch: selectedCompany);
    setState(() {
      jobs = response;
      loading = true;
    });
  }

  @override
  void initState() {
    fetchJobs();
    fetchBranch();
    fetchSkills();
    super.initState();
  }

  Color containerColor = const Color(0xff1b1b1b);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      body: Column(
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
                        selectedCity = newValue!;
                        containerColor = const Color(0xffe7895e);
                      });
                    },
                    [
                      "Damascus",
                      "Aleppo",
                      "Homs",
                      "Hama",
                      "Latakia",
                      "Tartus",
                      "Idlib",
                      "Daraa",
                      "Raqqa",
                      "Deir ez-Zor",
                      "Hasakah",
                      "As-Suwayda",
                      "Quneitra"
                    ],
                  ),
                  filterDropdown(
                    'Salary',
                    selectedSalary,
                    (String? newValue) {
                      setState(() {
                        selectedSalary = newValue!;
                      });
                    },
                    ['Any', 'High -> Low', 'Low -> High'],
                  ),
                  filterDropdown(
                    'Branch',
                    selectedCompany,
                    (String? newValue) {
                      setState(() {
                        selectedCompany = newValue!;
                      });
                    },
                    branch,
                  ),
                  filterDropdown(
                    'Skill',
                    selectedSkill,
                    (String? newValue) {
                      setState(() {
                        selectedSkill = newValue!;
                      });
                    },
                    skill,
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(5),
              child: InkWell(
                onTap: () {
                  fetchFilteredJobs();
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
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              )),
          const SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
              child: loading
                  ? jobs != null
                      ? ListView.builder(
                          shrinkWrap: true,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const OpportunityDetails()));
                                  },
                                  child: Container(
                                    height: 300,
                                    width: 400,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: const Color(0xff1b1b1b),
                                        border: const Border(
                                            right: BorderSide(
                                                color: Color(0xffe7895e),
                                                width: 5))),
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 25),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding: EdgeInsets.only(top: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                      'assets/images/loGo.jpeg',
                                                    ),
                                                    radius: 22,
                                                  ),
                                                  SizedBox(width: 10),
                                                  Text('Back end developer',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .card_travel_outlined,
                                                        color:
                                                            Color(0xffa6c5fe)),
                                                    SizedBox(width: 10),
                                                    Text('Job Nature:',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffa6c5fe))),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                        jobs!.jobs![index]
                                                            .jobTitle!,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white))
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(MyFlutterApp.award,
                                                        color:
                                                            Color(0xffa6c5fe)),
                                                    SizedBox(width: 10),
                                                    Text('Experience:',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffa6c5fe))),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(
                                                        jobs!.jobs![index]
                                                            .experience!,
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white))
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                        Icons
                                                            .access_time_outlined,
                                                        color:
                                                            Color(0xffa6c5fe)),
                                                    SizedBox(width: 10),
                                                    Text('Type of employment:',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xffa6c5fe))),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text('Full-time',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white))
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              children: [
                                                Text('Smart Solution',
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                                Text(jobs!.jobs![index].branch!,
                                                    style: TextStyle(
                                                        color: Colors.white)),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            );
                          })
                      : Text(
                          'There are no jobs',
                        )
                  : Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: CircularProgressIndicator(
                            color: Color(0xffe7895e),
                          ),
                        ),
                      ],
                    ),
            ),
          )
        ],
      ),
    );
  }
}

Widget filterDropdown(String label, String? value,
    ValueChanged<String?> onChanged, List<String> items) {
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
              hint: Text(label,
                  style: const TextStyle(color: Colors.white, fontSize: 15)),
              underline: const SizedBox(),
              icon: const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              ),
              items: items.map<DropdownMenuItem<String>>((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child:
                      Text(item, style: const TextStyle(color: Colors.white)),
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
    case 'Salary':
      return Icons.attach_money;
    case 'Company':
      return Icons.business;
    case 'Skill':
      return Icons.work;
    default:
      return Icons.filter_list;
  }
}
