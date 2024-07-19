import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task/screens/audio.dart';
import 'package:task/screens/campus.dart';
import 'package:task/screens/channels.dart';
import 'package:task/screens/notifications.dart';
import 'package:task/screens/rewards.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // make navigation bar transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  // make flutter draw behind navigation bar
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  static Color themeAccentColor = const Color(0xff16C083);
  int _currentIndex = 0;
  final List<Widget> _screens = [
    const Campus(),
    const Channels(),
    const Audio(),
    const Rewards(),
    const Notifications(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: themeAccentColor, /// Color of selected label
        unselectedItemColor: Colors.grey, /// Color of unselected label
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },

        items: const  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: const Color(0xff16C083),),
            label: 'Campus',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard,color: const Color(0xff16C083),),
            label: 'Channels',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic,color: const Color(0xff16C083),),
            label: 'Audio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard,color: const Color(0xff16C083),),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: const Color(0xff16C083),),
            label: 'Notifications',
          ),
        ],
      ),
    );
  }
}
