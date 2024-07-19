import 'package:flutter/material.dart';

import '../utils/progress.dart';

class Campus extends StatefulWidget {
  const Campus({super.key});

  @override
  State<Campus> createState() => _CampusState();
}

class _CampusState extends State<Campus> {
  static Color themeAccentColor = const Color(0xff16C083);
  List listHashTags = ["Carrer", "Project", "UI/UX", "Branding","Carrer1", "Project1"];
  List tempArray = [];
  List listNames = ["Ira Sharma", "Vishal Nair", "Ira Sharma", "Vishal Nair", "Ira Sharma", "Vishal Nair"];
  List listCollege = ["Govt. College of...", "Govt. College of...", "Govt. College of...", "Govt. College of...", "Govt. College of...", "Govt. College of..."];
  List listTags = ["Create a resume that will get you hired", "Manage your Time efficiently and","Create a resume that will get you hired", "Manage your Time efficiently and","Create a resume that will get you hired", "Manage your Time efficiently and"];
  List listColors = [themeAccentColor,Colors.indigo,Colors.amber,Colors.deepPurpleAccent,Colors.blueAccent,Colors.orangeAccent];
  List<Image> imagesPic = [
    Image.asset("assets/profile/bannerprofile.png"),
    Image.asset("assets/profile/banner_profile1.png"),
    Image.asset("assets/profile/bannerprofile.png"),
    Image.asset("assets/profile/banner_profile1.png"),
    Image.asset("assets/profile/bannerprofile.png"),
    Image.asset("assets/profile/banner_profile1.png"),
  ];
  List<Image> imagesPost = [
    Image.asset("assets/profile/post1.png"),
    Image.asset("assets/profile/post2.png"),
    Image.asset("assets/profile/post3.png"),
    Image.asset("assets/profile/post4.png"),
    Image.asset("assets/profile/post1.png"),
    Image.asset("assets/profile/post2.png"),
  ];
  List<Image> images = [
    Image.asset("assets/profile/profile1.png"),
    Image.asset("assets/profile/profile2.png"),
    Image.asset("assets/profile/profile3.png"),
    Image.asset("assets/profile/profile1.png"),
    Image.asset("assets/profile/profile2.png"),
    Image.asset("assets/profile/profile3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: AppBar(backgroundColor: Colors.white,

        title:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 15.0,
                  backgroundColor: Colors.grey.shade200,
                  backgroundImage: AssetImage('assets/profile/my_profile.png'),
                ),
                SizedBox(width: 8),
                Text('Campus',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
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
      floatingActionButton: FloatingActionButton.small(onPressed: (){}, backgroundColor: themeAccentColor,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),child: const Icon(Icons.add,size: 30,color: Colors.white,),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// Audio Rooms
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Audio Rooms',
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
              const SizedBox(height: 8),
              Container(
                height: 35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listHashTags.length, // Adjust this based on your data
                  itemBuilder: (context, index) {
                    int selectedIndex=0;
                    return InkWell(
                      child:Container(
                        width: 70,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration:  BoxDecoration(
                          color: selectedIndex == index ? themeAccentColor: Colors.white,
                          border: Border.all(
                            color: themeAccentColor,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20.0), // Uniform radius
                        ),
                        child: Center(
                          child: Text(
                            '#${listHashTags[index]}',
                            style:  TextStyle(fontSize: 12, color: selectedIndex == index ? Colors.white: themeAccentColor,
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                          selectedIndex = index;
                          setState(() {
                        });
                      },
                    );
                  },

                ),

              ),
              const SizedBox(height: 16),
          
              /// Banners

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Banners',
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
              const SizedBox(height: 8),
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listNames.length, // Adjust this based on your data
                  itemBuilder: (context, index) {
                    return  InkWell(
                        onTap: (){
                      print("Container clicked");
                    },
                    child:Container(
                      width: 250,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: listColors[index],
                        borderRadius: BorderRadius.circular(15), // Rounded corners
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 10,
                            child:SizedBox(
                              width: 40,
                              height: 20,
                              child: ElevatedButton(
                              onPressed: () {
                                // Handle join button press
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const WorkInProgress()),
                                );
                              },

                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.redAccent,
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 0)),
                              child: const Text('Live', style: const TextStyle(color: Colors.white, fontSize: 10)),
                            ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            left: 10,
                            child:Text(
                              '${listNames[index]}',
                              style: const TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                           Positioned(
                            bottom: 10,
                            right: 0,
                            child:SizedBox(
                              width: 50,
                              height: 100,
                              child: Image(image:imagesPic[index].image),
                            ),
                          ),
                           Positioned(
                            top: 10,
                            right: 40,
                            child:SizedBox(
                              width: 20,
                              height: 20,
                              child:  CircleAvatar(
                                radius: 50.0,
                                backgroundColor: Colors.grey.shade200,
                                backgroundImage: AssetImage('assets/profile/profile1.png'),
                              ),

                            ),
                          ),
                           Positioned(
                            top: 10,
                            right: 30,
                            child:SizedBox(
                              width: 20,
                              height: 20,
                              child:  CircleAvatar(
                                radius: 50.0,
                                backgroundColor: Colors.grey.shade200,
                                backgroundImage: AssetImage('assets/profile/profile2.png'),
                              ),

                            ),
                          ),
                           Positioned(
                            top: 10,
                            right: 20,
                            child:SizedBox(
                              width: 20,
                              height: 20,
                              child:  CircleAvatar(
                                radius: 50.0,
                                backgroundColor: Colors.grey.shade200,
                                backgroundImage: AssetImage('assets/profile/profile3.png'),
                              ),

                            ),
                          ),
                          const Positioned(
                            top: 10,
                            right: 10,
                            child:SizedBox(
                              width: 20,
                              height: 20,
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
                                style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 16),
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
                              child: const Text('Join', style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 14)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    );
                  },
                ),
              ),
          
              const SizedBox(height: 16),

              /// Vertical list
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount:2, // Adjust this based on your data
                itemBuilder: (context, index) {
                  return  InkWell(
                      onTap: (){
                    print("Container clicked");
                  },
                  child:Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                     child: Column(
                        children : [
                          // A Row for the top
                           Row(
                            children: [
                               CircleAvatar(
                                radius: 20.0,
                                 backgroundColor: Colors.grey.shade200,
                                backgroundImage:imagesPost[index].image,
                              ),
                              const SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${listNames[index]}',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(width: 200,
                                    child: Text(
                                      'Student @AAM | Learning about finance opportunities and se...',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                          fontStyle: FontStyle.italic
                                      ),
                                    ),),

                                ],
                              ),

                            ],
                          ),
                          //For the Line
                          // A Row for each Row in the table from now on
                          //VerticalDivider for the vertical line, just as Divider
                         const Row(
                          children: [
                          SizedBox(width: 8),
                          Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                  SizedBox(width: 300,
                  child:Text(
                          'What is the simplest investment advice you can give me?',
                          style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          ),
                          ),
                  ),
                          SizedBox(width: 300,
                          child: Text(
                          'Just recently got into investing, looking for the best stocks to invest in for a long                     View More...',
                          style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                  ),
                  ),),

                  ],
                  ),

                  ],
                  ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        width: 200,
                                          child:  ElevatedButton.icon(
                                            icon:  Icon(
                                              Icons.upload,
                                              size: 20.0,
                                              color: themeAccentColor,
                                            ),
                                            label: const Text('12 upvotes', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => const WorkInProgress()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                                padding: const EdgeInsets.symmetric(
                                                    vertical: 0, horizontal: 0)),
                                              ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        width: 50,
                                        child:  ElevatedButton.icon(
                                          icon: const Icon(
                                            Icons.file_download,
                                            size: 20.0,
                                            color: Colors.grey,
                                          ),
                                          label: const Text('', style: const TextStyle(color: Colors.grey, fontSize: 0)),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const WorkInProgress()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 5, horizontal: 5)),
                                        ),
                                      ),
                                    ),
                                  ), Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        width: 200,
                                        child:  ElevatedButton.icon(
                                          icon: const Icon(
                                            Icons.message,
                                            size: 20.0,
                                            color: Colors.grey,
                                          ),
                                          label: const Text('4 Answers', style: const TextStyle(color: Colors.grey, fontSize: 12)),
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => const WorkInProgress()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              padding: const EdgeInsets.symmetric(
                                                  vertical: 0, horizontal: 0)),
                                        ),
                                      ),
                                    ),
                                  ),
                            ],
                          ),  // be carefull with the $ since it's used to put variables
                            // into strings, eg Text('Name : $name ')
                        ],
                      ),

                    ),
                  ),
                  );
                },
              ),

              /// Sign up now banner
          InkWell(
            onTap: (){
              print("Container clicked");
            },
            child: Container(
                height: 320,
                margin: const EdgeInsets.symmetric(vertical: 8),
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(15.0),
                    image: const DecorationImage(
                      image:  AssetImage("assets/profile/hackathon_banner.png"),
                      fit: BoxFit.fill,
                )// Rounded corners
                ),
                child: Stack(
                  children: [
                    const Positioned(
                      bottom: 10,
                      left: 10,
                      child:Text(
                        'Hackathon Event . 12 Dec',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                     Positioned(
                      bottom: 60,
                      right: 40,
                      child:SizedBox(
                        width: 25,
                        height: 25,
                        child:  CircleAvatar(
                          backgroundColor: Colors.grey.shade200,
                          radius: 50.0,
                          backgroundImage: AssetImage('assets/profile/profile1.png'),
                        ),

                      ),
                    ),
                     Positioned(
                      bottom: 60,
                      right: 30,
                      child:SizedBox(
                        width: 25,
                        height: 25,
                        child:  CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage: AssetImage('assets/profile/profile2.png'),
                        ),

                      ),
                    ),
                     Positioned(
                      bottom: 60,
                      right: 20,
                      child:SizedBox(
                        width: 25,
                        height: 25,
                        child:  CircleAvatar(
                          radius: 50.0,
                          backgroundColor: Colors.grey.shade200,
                          backgroundImage: AssetImage('assets/profile/profile3.png'),
                        ),

                      ),
                    ),
                    const Positioned(
                      bottom: 60,
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
                              style: TextStyle(color: Colors.black,fontSize: 9),
                            ),
                          ),
                        ),

                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 10,
                      child:Container(
                        width: 200,
                        child:   const Text(
                          'Key to making tough decisions ',
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 18),
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
                        child: const Text('Sign Up For Join', style: const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
          ),
              const SizedBox(height: 16),

              /// People you may Know

               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'People you may know',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 28),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'See All',
                      style: TextStyle(fontSize: 14,color: themeAccentColor),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),
              Container(
                height: 210, // Adjust height based on your design
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6, // Adjust this based on your data
                  itemBuilder: (context, index) {
                    return  InkWell(
                        onTap: (){
                      print("Container clicked");
                    },
                    child:Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                               CircleAvatar(
                                 backgroundColor: Colors.grey.shade200,
                                backgroundImage:imagesPost[index].image, // Replace with actual profile image URL
                                radius: 40,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                '${listNames[index]}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '${listCollege[index]}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic
                                ),
                              ),
                              const SizedBox(height: 8),
                              ElevatedButton(
                                onPressed: () {
                                  // Handle join button press
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const WorkInProgress()),
                                  );
                                },
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(12.0),
                                              side: BorderSide(color: Colors.white)
                                          )
                                      ),
                                      backgroundColor: MaterialStateProperty.all(Colors.black),
                                  ),

                                child: const Text('Follow', style: const TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

