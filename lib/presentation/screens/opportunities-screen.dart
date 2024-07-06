import 'package:flutter/material.dart';
import 'package:hireme/const/my_flutter_app_icons.dart';
import 'package:hireme/presentation/screens/opportunity_details.dart';

class OpportunitiesScreen extends StatelessWidget {
  const OpportunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2c2f34),
      body: Column(
        children: [
          searchWidget(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>
                            OpportunityDetails()
                            ));
                          }
                          ,child: Container(
                            height: 300,
                            width: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color(0xff1b1b1b),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 15),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                          
                                        children: [
                                          CircleAvatar(
                                            backgroundImage:
                                            AssetImage(
                                                'assets/images/mtn.jpg',),
                                            radius: 22,
                                          ),
                                          SizedBox(width: 10),
                                          Text('Engineer:Maintenance',
                                              style: TextStyle(
                                                  color: Color(0xffa6c5fe)))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .center,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(Icons.card_travel_outlined,
                                                color: Color(0xffa6c5fe)),
                                            SizedBox(width: 10),
                                            Text('Employment:',
                                                style: TextStyle(
                                                    color: Color(0xffa6c5fe))),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Text('Communications',
                                                style:
                                                TextStyle(
                                                    color: Color(0xffa6c5fe)))
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
                                                style:
                                                TextStyle(
                                                    color: Color(0xffa6c5fe)))
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
                                                style:
                                                TextStyle(
                                                    color: Color(0xffa6c5fe)))
                                          ],
                                        ),
                          
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      children: [
                                        Text('MTN Syria',
                                            style: TextStyle(
                                                color: Color(0xffa6c5fe))),
                                        Text('Aleppo',
                                            style: TextStyle(
                                                color: Color(0xffa6c5fe))),
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
          )
        ],
      ),
    );
  }
}

Widget searchWidget() {
  return Padding(
    padding: const EdgeInsets.only(left: 10, right: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xff1b1b1b),
            ),
            width: 320,
            height: 50,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 3,
                  ),
                  Icon(Icons.search, size: 30, color: Color(0xffa6c5fe)),
                  SizedBox(
                    width: 7,
                  ),
                  Text('Search for job opportunities',
                      style: TextStyle(fontSize: 16, color: Color(0xffa6c5fe))),
                ],
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
            ),
            color: const Color(0xffa6c5fe),
            iconSize: 35)
      ],
    ),
  );
}
