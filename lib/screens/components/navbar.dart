// import 'package:flutter/material.dart';

// class CustomBottomNavBar extends StatelessWidget {
//   final int currentIndex;
//   final Function(int) onTap;

//   CustomBottomNavBar({required this.currentIndex, required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return BottomAppBar(
//       // Wrap the navigation bar with BottomAppBar
//       elevation: 8,
//       child: Container(
//         height: 56, // Adjust the height as needed
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             _NavBarItem(
//               icon: Icons.send,
//               label: '',
//               isSelected: currentIndex == 0,
//               onTap: () => onTap(0),
//               context: context, // Pass the context here
//             ),
//             _NavBarItem(
//               icon: Icons.lightbulb_outline,
//               label: '',
//               isSelected: currentIndex == 1,
//               onTap: () => onTap(1),
//               context: context, // Pass the context here
//             ),
//             _NavBarItem(
//               icon: Icons.home,
//               label: '',
//               isSelected: currentIndex == 2,
//               onTap: () => onTap(2),
//               context: context, // Pass the context here
//             ),
//             _NavBarItem(
//               icon: Icons.person,
//               label: '',
//               isSelected: currentIndex == 3,
//               onTap: () => onTap(3),
//               context: context, // Pass the context here
//             ),
//             _NavBarItem(
//               icon: Icons.calendar_today,
//               label: '',
//               isSelected: currentIndex == 4,
//               onTap: () => onTap(4),
//               context: context, // Pass the context here
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _NavBarItem extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final bool isSelected;
//   final Function onTap;
//   final BuildContext context; // Add this line

//   _NavBarItem({
//     required this.icon,
//     required this.label,
//     required this.isSelected,
//     required this.onTap,
//     required this.context, // Add this line
//   });
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => onTap(),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(
//             icon,
//             color: isSelected ? Colors.blue : Colors.grey,
//           ),
//           Text(
//             label,
//             style: TextStyle(
//               color: isSelected ? Colors.blue : Colors.grey,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      currentIndex: 0, // Set the initial selected index
      onTap: (int index) {
        // Handle navigation when an item is tapped
        switch (index) {
          case 0:
            Navigator.of(context).pushReplacementNamed('/home');
            break;
          case 1:
            Navigator.of(context).pushReplacementNamed('/profile');
            break;
            case 2:
            Navigator.of(context).pushReplacementNamed('/profile');
            break;
            case 3:
            Navigator.of(context).pushReplacementNamed('/profile');
            break;
            case 4:
            Navigator.of(context).pushReplacementNamed('/profile');
            break;
          // Add cases for other items
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.send),
          label: 'Telegram',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.lightbulb_outline),
          label: 'Bulb',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today),
          label: 'Calendar',
        ),
      ],
    );
  }
}
