import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 25,
        // top: MediaQuery.of(context).padding.top,
        left: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome Home',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 8),
              Text('Humayun Kabir',
                style: TextStyle(
                    color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ),
              ),
            ],

          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top:25,right: 20),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(Icons.notifications_none_outlined,
                        size: 28,color: Colors.grey),
                    Positioned(
                      right: 0,
                      top: 0,
                      width: 7,
                      height: 7,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),

                      ),
                    )
                  ],
                )
              ),
              SizedBox(width:10,),
              Container(
                margin: EdgeInsets.only(right:30 ),
                child: ClipOval(
                 child:Image.asset('assets/images/avatar.png',
                   width: 30,
                 ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
