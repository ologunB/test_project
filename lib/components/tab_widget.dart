import 'package:flutter/material.dart';

import 'colors.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    _currentIndex = 0;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color:
                          _currentIndex == 0 ? AppColors.primary : Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        topLeft: Radius.circular(10),
                      ),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Text(
                      'Arbeitgeber',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          color:
                              _currentIndex == 0 ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _currentIndex = 1;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color:
                          _currentIndex == 1 ? AppColors.primary : Colors.white,
                      border: Border(
                        top: BorderSide(color: Colors.black12),
                        bottom: BorderSide(color: Colors.black12),
                      ),
                    ),
                    child: Text(
                      'Arbeitgeber',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          color:
                              _currentIndex == 1 ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    _currentIndex = 2;
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color:
                          _currentIndex == 2 ? AppColors.primary : Colors.white,
                      border: Border.all(color: Colors.black12),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Arbeitgeber',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 14,
                          color:
                              _currentIndex == 2 ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
