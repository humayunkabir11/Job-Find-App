import 'package:annie_ui_day13/widgets/company_item.dart';
import 'package:annie_ui_day13/widgets/company_list.dart';
import 'package:annie_ui_day13/widgets/home_appbar.dart';
import 'package:annie_ui_day13/widgets/search_bar.dart';
import 'package:annie_ui_day13/widgets/tag_list.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.white,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.2),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                HomeAppBar(),
                SearchBar(),
                TagList(),
                CompanyList(),
              ],
            ),
          )
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //     onPressed: (){},
      //     child: Icon(Icons.add),
      //
      //     ),
      // bottomNavigationBar: Theme(
      //
      //   data: ThemeData(
      //     splashColor: Colors.transparent,
      //     highlightColor: Colors.transparent
      //   ),
      //   child: BottomNavigationBar(
      //     showUnselectedLabels: false,
      //     showSelectedLabels: true,
      //     selectedItemColor: Theme.of(context).primaryColor,
      //     type: BottomNavigationBarType.fixed,
      //     items: [
      //
      //       BottomNavigationBarItem(
      //        label:'home',
      //         icon: Icon(Icons.home,size: 25,),
      //       ),
      //       BottomNavigationBarItem(
      //        label:'calender',
      //         icon: Icon(Icons.calendar_today,size: 25,),
      //
      //       ),
      //       BottomNavigationBarItem(
      //        label:'' ,
      //         icon:Text(''),
      //       ),
      //
      //       BottomNavigationBarItem(
      //        label: 'chat',
      //         icon: Icon(Icons.chat_bubble_outline,size: 25,),
      //       ),
      //
      //       BottomNavigationBarItem(
      //        label:'Person',
      //         icon: Icon(Icons.person,size: 25,),
      //       ),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.green,
        backgroundColor: Colors.blueAccent,
        height: 75,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.calendar_today, size: 30),
          Icon(Icons.add, size: 30,
          color: Colors.white,),
          Icon(Icons.cases_outlined, size: 30),
          Icon(Icons.person, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),

    );

  }
}
