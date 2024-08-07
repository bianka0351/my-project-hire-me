import 'package:flutter/material.dart';
import 'package:hireme/presentation/user/screens/opportunities/opportunity_details.dart';


class AppliedJobs extends StatefulWidget {
  const AppliedJobs({super.key});

  @override
  State<AppliedJobs> createState() => _AppliedJobsState();
}

class _AppliedJobsState extends State<AppliedJobs> {
  List<int> appliedJobs = [0, 1, 2, 3,4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      // Background color of Scaffold

      body: Padding(
        padding:  const EdgeInsets.all(25),
        child: ListView.builder(
          itemCount: appliedJobs.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OpportunityDetails(),
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
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
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
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'POS Representative',
                                              style: TextStyle(
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
                                              onPressed:(){
                                                  setState(() {
                                                    appliedJobs.removeAt(index);
                                                  });
                                              }
                                            )
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
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.timer_sharp,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    'UNDER REVIEWING',
                                    style: TextStyle(
                                      color: Color(0xffe7895e),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              Divider(
                                color: Color(0xffa6c5fe),
                                thickness: 2,
                                indent: 20,
                                endIndent: 20,
                              ),
                              Padding(
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
        ),
      ),
    );
  }
}
