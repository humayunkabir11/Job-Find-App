class CompanyInfo {
  String logoUrl;
  String cName;
  String title;
  String location;
  String fullTime;
  List<String> req;
    CompanyInfo(
        this.logoUrl,this.cName,this.title,this.location,this.fullTime,this.req
        );
    static List<CompanyInfo> generateCompanyList(){
      return [
      CompanyInfo('assets/images/airbnb_logo.png', 'AirBnB inc,','VP Business intelegence',
          'Mirpur,Dhaka , \n Bangladesh', 'full time',
          [
                'Design, develop, deploy and maintain enterprise software: '
                ' Understand for material  and  production  methods '
                ' Have different and  Practical  scientific and  knowlwdges and ability'
                'interested in the way choose  use and ability '
          ],
       ),
      CompanyInfo('assets/images/google_logo.png', 'Google LLC','Product design',
          'MirPur,Dhaka,Bangladesh', 'full time',
          [
                'Creative with an eye for color and shape '
                ' Understand for material and  production \n methods '
                ' Have different and  Practical \n scientific and knowlwdges and ability'
                'interested in the way choose \n use and ability '
          ],
       ),
      CompanyInfo('assets/images/google_logo.png', 'Google LLC','Product design',
          'Dhaka,417 merion plaza \n United state', 'full time',
          [
                'Creative with an eye for color and shape '
                ' Understand for material and  production \n methods '
                ' Have different and  Practical \n scientific and knowlwdges and ability'
                'interested in the way choose \n use and ability '
          ],
       ),
      ];
    }
}