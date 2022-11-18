import 'package:flutter/material.dart';
import 'package:pizza_flutter/app/ui/fragments/home.fragment.dart';
import '/core/core.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  // Form key = GlobalKey(debugLabel: "key") as Form;

  final _widgetOptions = [
    const HomeFragment(),
    const SafeArea(
      child: Center(
        child: Text(
          'Will Implement this feature soon',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 50,
          ),
        ),
      ),
    ),
    const SafeArea(
      child: Center(
        child: Text(
          'Will Implement this feature soon',
          style: TextStyle(
              color: Colors.black54,
              fontSize: 50,
          ),
        ),
      ),
    ),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
              spreadRadius: 0,
                blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    AppAssets.kHomeIcon,
                    width: 35,
                    height: 35,
                  ),
                  label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(AppAssets.kShoppingIcon),
                label: 'Shopping',
              ),
              BottomNavigationBarItem(
                  icon: Image.asset(AppAssets.kCircleIcon),
                  label: 'Settings'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: AppColors.kPrimary,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
