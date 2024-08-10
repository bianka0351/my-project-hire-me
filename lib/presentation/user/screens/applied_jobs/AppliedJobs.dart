import 'package:flutter/material.dart';
import 'package:hireme/models/get_applied_job_response/get_applied_job_response.dart';
import 'package:hireme/repo/main_repo.dart';

import '../opportunities/opportunity_details.dart';

class AppliedJobs extends StatefulWidget {
  const AppliedJobs({super.key});

  @override
  State<AppliedJobs> createState() => _AppliedJobsState();
}

class _AppliedJobsState extends State<AppliedJobs> {
  GetAppliedJobResponse? jobResponse;
  bool loading = false;

  fetchAppliedJobs() async {
    var response = await MainRepo().getAppliedJob();
    setState(() {
      jobResponse = response;
      loading = true;
    });
  }

  List<int> appliedJobs = [0, 1, 2, 3, 4];

  @override
  void initState() {
    fetchAppliedJobs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      // Background color of Scaffold

      body: Padding(
        padding: const EdgeInsets.all(25),
        child: loading
            ? jobResponse != null
                ? ListView.builder(
                    itemCount: appliedJobs.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const OpportunityDetails(),
                                ),
                              );
                            },
                            child: Container(
                              height: 250,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(0xff1b1b1b),
                                  border: const Border(
                                      right: BorderSide(
                                          color: Color(0xffe7895e), width: 5))),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 25),
                                      child: Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundImage: AssetImage(
                                              'assets/images/loGo.jpeg', // Ensure this path is correct
                                            ),
                                            radius: 25,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        jobResponse!
                                                            .result!
                                                            .users![index]
                                                            .branchName!,
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                      IconButton(
                                                          icon: const Icon(
                                                            Icons.delete,
                                                            color: Colors.white,
                                                            size: 20,
                                                          ),
                                                          onPressed: () {
                                                            setState(() {
                                                              appliedJobs
                                                                  .removeAt(
                                                                      index);
                                                            });
                                                          })
                                                    ],
                                                  ),
                                                  const Text(
                                                    'Smart Solution',
                                                    style: TextStyle(
                                                      color: Color(0xffa6c5fe),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Icon(
                                              Icons.timer_sharp,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              jobResponse!.result!.users![index]
                                                  .statusName!,
                                              style: const TextStyle(
                                                color: Color(0xffe7895e),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        const Divider(
                                          color: Color(0xffa6c5fe),
                                          thickness: 2,
                                          indent: 20,
                                          endIndent: 20,
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.person,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                              SizedBox(width: 15),
                                              Expanded(
                                                child: Text(
                                                  'Miss Bianka, your application is under review by Syriatel Mobile Telecom. Wish you all the best.',
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 15),
                                                  overflow: TextOverflow
                                                      .visible, // Ensures the full text is displayed
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                        ],
                      );
                    },
                  )
                : const Text('There are no applied jobs')
            : const CircularProgressIndicator(
                color: Color(0xffe7895e),
              ),
      ),
    );
  }
}
