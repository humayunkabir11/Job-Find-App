import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,top: 15),
      width: double.maxFinite,
      height: 300,
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage('assets/images/search_bg.png'),
          fit: BoxFit.cover
        )
      ),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Fast Search',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 10,),
          Text('You can search quickly for \n the for you want',
          style: TextStyle(color: Colors.white60,height: 1.8,fontWeight: FontWeight.bold
          ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 50,
            margin: EdgeInsets.only(right: 20,),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.circular(20)

            ),

            child: Row(
              children: [
                Image.asset('assets/icons/search.png',width: 20,),
                SizedBox(width: 10,),
                Text('Search',style: TextStyle(
                  color: Colors.grey
                ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
