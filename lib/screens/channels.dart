import 'package:flutter/material.dart';

import '../utils/progress.dart';

class Channels extends StatefulWidget {
  const Channels({super.key});

  @override
  State<Channels> createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {
  //custom Color
  static Color themeAccentColor = const Color(0xff16C083);
  //static lists
  List listHashTags = ["PaperCut", "MasterMind", "projex", "lion","PaperCut", "MasterMind"];
  List listStatus = ["Free", "PRO", "Free", "PRO","Free", "PRO"];
  List listNames = ["Ira Sharma", "Vishal Nair", "Ira Sharma", "Vishal Nair", "Ira Sharma", "Vishal Nair"];
  List listCollege = ["Interview que..", "Mind Of a CEO", "Prepare For Project", "Interview que..", "Mind Of a CEO", "Prepare For Project"];
  List listTags = ["Create a resume that will get you hired", "Manage your Time efficiently and","Create a resume that will get you hired", "Manage your Time efficiently and","Create a resume that will get you hired", "Manage your Time efficiently and"];
  List listColors = [themeAccentColor,Colors.indigo,Colors.amber,Colors.deepPurpleAccent,Colors.blueAccent,Colors.orangeAccent];
  //static assets list
  List<Image> images = [
    Image.asset("assets/profile/profile1.png"),
    Image.asset("assets/profile/profile2.png"),
    Image.asset("assets/profile/profile3.png"),
    Image.asset("assets/profile/profile1.png"),
    Image.asset("assets/profile/profile2.png"),
    Image.asset("assets/profile/profile3.png"),
  ];
  List<Image> imagesPic = [
    Image.asset("assets/profile/bannerprofile.png"),
    Image.asset("assets/profile/banner_profile1.png"),
    Image.asset("assets/profile/bannerprofile.png"),
    Image.asset("assets/profile/banner_profile1.png"),
    Image.asset("assets/profile/bannerprofile.png"),
    Image.asset("assets/profile/banner_profile1.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(backgroundColor: Colors.white,
        title:  const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15.0,
                  backgroundImage: AssetImage('assets/profile/my_profile.png'),
                ),
                SizedBox(width: 8),
                Text('Channels',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
              ],
            ),
            Row(
              children: [
                Icon(Icons.search),
                SizedBox(width: 28),
                Icon(Icons.chat),
              ],
            ),
          ],
        ),
      ),
      //body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //browse community static text
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Browse Community',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 28),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'View All',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            //browse community list data container
            Container(
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.transparent
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return  InkWell(
                      onTap: (){
                  },
                  child: Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Card(
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                  ),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         CircleAvatar(
                          radius: 40,
                          backgroundImage: images[index].image,// Replace with your profile image URL
                             child:  Stack(
                         children: [
                         Align(
                         alignment: Alignment.bottomRight,
                             child: CircleAvatar(
                                 radius: 12,
                                 backgroundColor: themeAccentColor,
                                 child: RawMaterialButton(
                                   onPressed: () {
                                     Navigator.push(
                                       context,
                                       MaterialPageRoute(builder: (context) => const WorkInProgress()),
                                     );
                                   },
                                   elevation: 5.0,
                                   child: Icon(Icons.add, size:20 ,color: Colors.white,),
                                   shape: const CircleBorder(),
                                 )
                             ),

                         )
                      ]
                    )
                        ),
                        const SizedBox(height: 8),
                        Text('${listHashTags[index]}', style: const TextStyle(fontSize: 14,fontWeight: FontWeight.bold,)),
                        Text('${listCollege[index]}', style: TextStyle(fontSize: 14, color: Colors.grey)),
                      ],
                    ),
                  ),
                      )
                  ),
                  );
                },
              ),
            ),
            //recommended static text
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Recommended',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 28),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'View All',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            //list of recommented events
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return   InkWell(
                    onTap: (){
                  print("Container clicked");
                },
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        //recommended events box design
                        decoration: BoxDecoration(
                          color: listColors[index],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      //free or pro status button
                      Positioned(
                        top: 10,
                        left: 10,
                        child:SizedBox(
                          width: 50,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle join button press
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white54,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 0)),
                            child:  Text( '${listStatus[index]}', style: const TextStyle(color: Colors.white, fontSize: 12)),
                          ),
                        ),
                      ),
                      //container half image display
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child:Text(
                          '${listNames[index]}',
                          style: const TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),

                      //users rounded view display
                       Positioned(
                        bottom: 10,
                        right: 0,
                        child:SizedBox(
                          width: 70,
                          height: 130,
                          child: Image(image:imagesPic[index].image),
                        ),
                      ),
                       Positioned(
                        top: 10,
                        right: 40,
                        child:SizedBox(
                          width: 25,
                          height: 25,
                          child:  CircleAvatar(
                            radius: 50.0,
                            backgroundImage: images[1].image,
                          ),

                        ),
                      ),
                       Positioned(
                        top: 10,
                        right: 30,
                        child:SizedBox(
                          width: 25,
                          height: 25,
                          child:  CircleAvatar(
                            radius: 50.0,
                            backgroundImage:images[2].image,
                          ),

                        ),
                      ),
                       Positioned(
                        top: 10,
                        right: 20,
                        child:SizedBox(
                          width: 25,
                          height: 25,
                          child:  CircleAvatar(
                            radius: 50.0,
                            backgroundImage:  images[3].image,
                          ),

                        ),
                      ),

                      const Positioned(
                        top: 10,
                        right: 10,
                        child:SizedBox(
                          width: 25,
                          height: 25,
                          child:  CircleAvatar(
                            radius: 50.0,
                            backgroundColor: Colors.white70,
                            child: Center(
                              child: Text(
                                "+46",
                                style: TextStyle(color: Colors.black,fontSize: 7),
                              ),
                            ),
                          ),

                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 10,
                        child:Container(
                          width: 180,
                          child:   Text(
                            '${listTags[index]}',
                            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),
                          ),
                        ),

                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle join button press
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const WorkInProgress()),
                            );
                          },
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              const BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            backgroundColor: MaterialStateProperty.all(Colors.black),
                          ),
                          child: const Text('Join Channel', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 14)),
                        ),
                      ),
                    ],
                  ),
                ),
                );
              },

            ),
          ],
        ),
      ),
    );
  }
}

