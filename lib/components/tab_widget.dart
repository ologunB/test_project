import 'package:flutter/material.dart';

import 'colors.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({Key? key, this.onSelect, this.currentIndex})
      : super(key: key);

  final Function(int)? onSelect;
  final int? currentIndex;
  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController? tabController;

  @override
  void initState() {
    _currentIndex = widget.currentIndex!;
    tabController =
        TabController(vsync: this, length: 3, initialIndex: _currentIndex);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.transparent,
          isScrollable: true,
          labelPadding: EdgeInsets.zero,
          onTap: (a) {
            tabController!.index = a;
            _currentIndex = a;
            widget.onSelect!(a);
            setState(() {});
          },
          tabs: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              width: 170,
              decoration: BoxDecoration(
                color: _currentIndex == 0 ? AppColors.primary : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                border: Border.all(color: Colors.black12),
              ),
              child: Text(
                'Arbeitnehmer',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color:
                        _currentIndex == 0 ? Colors.white : AppColors.primary,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 170,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: _currentIndex == 1 ? AppColors.primary : Colors.white,
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
                        _currentIndex == 1 ? Colors.white : AppColors.primary,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 170,
              padding: EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                color: _currentIndex == 2 ? AppColors.primary : Colors.white,
                border: Border.all(color: Colors.black12),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Text(
                'Temporärbüro',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    color:
                        _currentIndex == 2 ? Colors.white : AppColors.primary,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
