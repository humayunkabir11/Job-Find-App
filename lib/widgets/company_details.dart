import 'package:annie_ui_day13/Auth/registration.dart';
import 'package:annie_ui_day13/model/company_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CompanyDetails extends StatelessWidget {
 final CompanyInfo companyInfo;
 CompanyDetails(this.companyInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 500,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25)
        )
      ),
      child: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 5,
                width: 60,
                color: Colors.grey,
              ),
            ),
           SizedBox(height: 15,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Row(
                 children: [
                   Container(
                      padding: EdgeInsets.all(10),
                      height: 40,width: 40,
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20),
                       color: Colors.grey.withOpacity(0.3)
                     ),
                     child: Image.asset('assets/images/google_logo.png',),
                   ),
                   SizedBox(width: 15,),
                   Text('Google LLC')
                 ],
               ),
               Row(
                 children: [
                   Icon(Icons.bookmark_outline,size: 25,),
                   Icon(Icons.more_horiz_outlined,size: 25,)
                 ],
               )
             ],
           ),
            SizedBox(height: 10,),
            Text(companyInfo.title,style: TextStyle(fontSize: 20),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.yellow,),
                    SizedBox(width: 8,),
                    Text(companyInfo.location),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.watch_later_outlined,color: Colors.yellow,),
                    SizedBox(width: 10,),
                    Text(companyInfo.fullTime),
                    SizedBox(width: 10)
                  ],
                )
              ],
            ),
            SizedBox(height: 25,),
            Text('Requirement ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15
            ),
            ),
            SizedBox(height: 15),
            // ...companyInfo.req.map((e) => Container(
            //   child: Row(
            //     children: [
            //       // Container(
            //       //   height: 5,width: 5,
            //       //   decoration: BoxDecoration(
            //       //     shape: BoxShape.circle,
            //       //     color: Colors.black
            //       //   ),
            //       // ),
            //       Text(e,
            //         style: TextStyle(
            //           height: 4
            //
            //       ),)
            //     ],
            //   ),
            // ),
            //),
            ...companyInfo.req.map((e)=>Container(
              child: Text(e,style: TextStyle(
                height: 4
              ),),
            )
            ),
            SizedBox(height: 15,),
            Container(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed:(){},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (contex)=>SignInPage()));
                    },
                    child: Text('Apply Now')),

              ),
            )
          ],
        ),
      ),
    );
  }
}
