import 'package:annie_ui_day13/model/company_info.dart';
import 'package:annie_ui_day13/widgets/company_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CompanyItem extends StatelessWidget {
 final CompanyInfo companyInfo;
 CompanyItem(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 30,height: 30,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Image.asset(companyInfo.logoUrl),
                  ),
                  SizedBox(width: 8,),
                  Text(companyInfo.cName,style: TextStyle(
                      fontSize: 25
                  ),)
                ],
              ),
              Icon(Icons.bookmark_outline),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(companyInfo.title,
            style: TextStyle(
              fontSize: 20
            ),),
          ),
         Row(
           children: [
             Icon(Icons.location_on,
             color: Colors.yellow,),
             SizedBox(width: 5,),
             Text(companyInfo.location)
           ],
         )
        ],
      ),
    );
  }
}
