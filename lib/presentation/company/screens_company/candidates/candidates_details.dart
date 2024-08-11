// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hireme/presentation/company/screens_company/candidates/bloc/candidate_bloc.dart';
import 'package:hireme/unified_api/result_builder/result_builder.dart';

class CandidatesDetails extends StatelessWidget {
  const CandidatesDetails({
    Key? key,
    required this.userId,
  }) : super(key: key);

  final int userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: CandidateBloc()..add(GetUserInfo(userId: userId)),
      child: Scaffold(
        backgroundColor: const Color(0xff2c2f34),
        body: BlocBuilder<CandidateBloc, CandidateState>(
          builder: (context, state) {
            return ResultBuilder(
              onError: () => context.read<CandidateBloc>().add(GetAllCandidates()),
              result: state.userInfo,
              success: (data) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/personal_image.jpg',
                        ),
                        radius: 50,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        "${data.firstName} ${data.lastName}",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        data.best_skill,
                        style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 192, 188, 188),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xff1b1b1b),
                                    border: const Border(right: BorderSide(color: Color(0xffe7895e), width: 5))),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Personal Information',
                                        style: TextStyle(
                                          color: Color(0xffe7895e),
                                          // Accent color for titles
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      InfoWidget(text1: '  Name:', text2: "${data.firstName} ${data.lastName}"),
                                      InfoWidget(text1: '  Email:', text2: data.email),
                                      InfoWidget(text1: '  Phone:', text2: data.phone_number),
                                      InfoWidget(text1: '  Location:', text2: data.address),
                                      InfoWidget(text1: '  Languages:', text2: data.language),
                                      InfoWidget(text1: '  Birthday:', text2: data.birthDate),
                                      InfoWidget(text1: '  Gender:', text2: data.gender),
                                      InfoWidget(text1: '  Scientific level:', text2: data.educationLevel),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xff1b1b1b),
                                    border: const Border(right: BorderSide(color: Color(0xffe7895e), width: 5))),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Experience & Portfoilo',
                                        style: TextStyle(
                                          color: Color(0xffe7895e),
                                          // Accent color for titles
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      InfoWidget(text1: '  Job Title', text2: data.experience.jobNature_name),
                                      InfoWidget(text1: '  Company', text2: data.experience.job_name),
                                      Row(
                                        children: [
                                          Text('  Date', style: TextStyle(color: Color(0xffa6c5fe), fontSize: 18)),
                                          SizedBox(width: 20),
                                          Text('  ${data.experience.start_date}  -', style: TextStyle(color: Colors.white, fontSize: 18)),
                                          Text('  ${data.experience.end_date}', style: TextStyle(color: Colors.white, fontSize: 18)),
                                        ],
                                      ),
                                      InfoWidget(text1: '  Description', text2: ''),
                                      const Divider(
                                        color: Color(0xffe7895e),
                                      ),
                                      InfoWidget(text1: '  Portfolio:', text2: data.experience.portfolio ?? data.github_link),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: const Color(0xff1b1b1b),
                                    border: const Border(right: BorderSide(color: Color(0xffe7895e), width: 5))),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Skills',
                                        style: TextStyle(
                                          color: Color(0xffe7895e),
                                          // Accent color for titles
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      InfoWidget(text1: '  skill:', text2: data.skill.skill_name),
                                      InfoWidget(text1: '  Skill Nature:', text2: data.skill.jobNature_name),
                                      InfoWidget(text1: '  Date Of Start:', text2: data.skill.started_at),
                                      InfoWidget(text1: '  Description:', text2: data.skill.description ?? "--"),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget InfoWidget({required String text1, required String text2}) {
  return Column(
    children: [
      Row(
        children: [
          Text(text1, style: const TextStyle(color: Color(0xffa6c5fe), fontSize: 18)),
          const SizedBox(width: 20),
          Text(text2, style: const TextStyle(color: Colors.white, fontSize: 18)),
        ],
      ),
      const SizedBox(height: 5),
    ],
  );
}
