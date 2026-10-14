import 'package:flutter/material.dart';
import 'widgets/top_bar/snap_top_bar.dart';
import 'widgets/bottom_nav/snap_bottom_nav.dart';

void main() {
  runApp(const SnapPulseApp());
}

class SnapPulseApp extends StatelessWidget {
  const SnapPulseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnapPulse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SnapTopBar(),
      body: Center(
        child: Text(
          'Tab $_currentIndex Active',
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      bottomNavigationBar: SnapBottomNav(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
