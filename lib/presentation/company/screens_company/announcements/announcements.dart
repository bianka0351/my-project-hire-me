import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/company/screens_company/announcements/announce_a_new_job.dart';
import 'package:hireme/presentation/company/screens_company/announcements/appliers_and_matching_candidates.dart';

class Announcements extends StatefulWidget {
  const Announcements({super.key});

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      body:   Stack(
        alignment: Alignment.bottomRight,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            child: ListView.builder(
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
                                  const AppliersAndMatchingCandidates()));
                        },
                        child: Container(
                          height: 300,
                          width: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff1b1b1b),
                              border: const Border(
                                  right: BorderSide(
                                      color: Color(0xffe7895e), width: 5))),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
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
                                          Icon(Icons.card_travel_outlined,
                                              color: Color(0xffa6c5fe)),
                                          SizedBox(width: 10),
                                          Text('Job Nature:',
                                              style: TextStyle(
                                                  color: Color(0xffa6c5fe))),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text('IT and Engeneering ',
                                              style: TextStyle(
                                                  color: Colors.white))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(MyFlutterApp.award,
                                              color: Color(0xffa6c5fe)),
                                          SizedBox(width: 10),
                                          Text('Experience:',
                                              style: TextStyle(
                                                  color: Color(0xffa6c5fe))),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text('3 Years',
                                              style: TextStyle(
                                                  color: Colors.white))
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.access_time_outlined,
                                              color: Color(0xffa6c5fe)),
                                          SizedBox(width: 10),
                                          Text('Type of employment:',
                                              style: TextStyle(
                                                  color: Color(0xffa6c5fe))),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Text('Full-time',
                                              style: TextStyle(
                                                  color: Colors.white))
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
                                          style:
                                          TextStyle(color: Colors.white)),
                                      Text('Aleppo',
                                          style:
                                          TextStyle(color: Colors.white)),
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
                }),
            
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: FloatingActionButton(
              backgroundColor:  Color(0xffe7895e),
                child: Icon(Icons.add,color: Colors.white,size: 35,),

                onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                            const AnnounceANewJob()));
                }),
          )
        ],
      ),
      

    );
  }
}
