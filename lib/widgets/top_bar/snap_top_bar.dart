import 'package:flutter/material.dart';

class SnapTopBar extends StatelessWidget implements PreferredSizeWidget {
  const SnapTopBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: false,
      title: const Text(
        'SnapPulse',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_border, color: Colors.white, size: 26),
          onPressed: () {
            // নোটিফিকেশন লজিক
          },
        ),
        IconButton(
          icon: const Icon(Icons.send_outlined, color: Colors.white, size: 26),
          onPressed: () {
            // চ্যাট বা ডিএম লজিক
          },
        ),
      ],
    );
  }
}
