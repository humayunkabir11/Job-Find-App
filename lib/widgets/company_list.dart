import 'package:annie_ui_day13/model/company_info.dart';
import 'package:annie_ui_day13/widgets/company_details.dart';
import 'package:annie_ui_day13/widgets/company_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CompanyList extends StatelessWidget {
  final comInfo = CompanyInfo.generateCompanyList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height:240,
      // margin: EdgeInsets.symmetric(vertical: 20),
      padding: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
               showModalBottomSheet(
                 backgroundColor: Colors.transparent,
                   isScrollControlled: true,
                   context: context,
                   builder:(context)=>CompanyDetails(comInfo[index]));
              },
                child: CompanyItem(comInfo[index]),
            );

          },
          separatorBuilder: (context,index)=>SizedBox(width: 10),
          itemCount: comInfo.length ),
    );
  }
}
