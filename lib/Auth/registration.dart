
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  late Animation _animation;
  late TextEditingController _nameController = TextEditingController(text: '');
  late TextEditingController _numberController = TextEditingController(text: '');
  late TextEditingController _emailController = TextEditingController(text: '');
  late TextEditingController _passWordController = TextEditingController(text: '');
  late TextEditingController _degingnationController = TextEditingController(text: '');
  final globalKeyForm = GlobalKey<FormState>();
  bool _obscureText = true;

  @override

  void _formValidKey(){
    final isValid = globalKeyForm.currentState!.validate();
    print('valid $isValid');
  }
  @override
  Widget build(BuildContext con) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
           backgroundColor: Colors.grey,
        body: Stack(
          children: [
            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView(
                children: [
                  SizedBox(height: size.height*0.1,),
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(text: 'Please Fill-Up the ',style: TextStyle
                            (color: Colors.redAccent,fontWeight: FontWeight.bold,fontSize: 20),),
                          TextSpan(text: 'Form',style: TextStyle
                            (color: Colors.green,fontWeight: FontWeight.bold,fontSize: 20)
                          ),

                        ]
                    ),
                  ),
                  SizedBox(height: 10,),
                  Form(
                    key: globalKeyForm,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'please give right input';
                            }
                          },
                          style: TextStyle(color: Colors.lightGreenAccent),
                          controller: _nameController,
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            hintText: 'Your Name',
                            hintStyle: TextStyle(color: Colors.redAccent,fontSize: 15),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                            errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)

                            ),
                            focusColor: Colors.white,

                          ),

                        ),
                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'please give right input';
                            }
                          },
                          style: TextStyle(color: Colors.lightGreenAccent),
                          controller: _numberController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Your Number',
                            hintStyle: TextStyle(color: Colors.redAccent,fontSize: 15),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                            ),
                            errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)

                            ),
                            focusColor: Colors.white,

                          ),

                        ),

                        SizedBox(height: 10,),
                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty||value.contains('@')){
                              return 'please valid value';
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _emailController,
                          style:TextStyle(color: Colors.lightGreenAccent,fontSize: 15),
                          decoration: InputDecoration(
                              hintText: 'Email',
                              hintStyle: TextStyle(color: Colors.redAccent,fontSize: 15),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.green
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red
                                ),
                              ),
                              focusColor: Colors.green
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          obscureText: _obscureText,
                          validator: (value){
                            if(value!.isEmpty||value.length<10){
                              return 'please valid value';
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _passWordController,
                          style:TextStyle(color: Colors.lightGreenAccent,fontSize: 15),
                          decoration: InputDecoration(
                              hintText: 'password',
                              suffixIcon: IconButton(onPressed: (){
                                setState(() {
                                  _obscureText=!_obscureText;
                                });
                              },
                                icon: Icon(
                                  _obscureText?Icons.visibility_off:Icons.visibility,color: Colors.green,
                                ),
                              ),
                              hintStyle: TextStyle(color: Colors.red,fontSize: 15),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.green
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red
                                ),
                              ),
                              focusColor: Colors.green
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          validator: (value){
                            if(value!.isEmpty){
                              return 'please valid value';
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: _degingnationController,
                          style:TextStyle(color: Colors.lightGreenAccent,fontSize: 15),
                          decoration: InputDecoration(
                              hintText: 'JOB DESIGNATION',
                              hintStyle: TextStyle(color: Colors.red,fontSize: 15),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.green
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.red
                                ),
                              ),
                              focusColor: Colors.green
                          ),
                        ),
                        SizedBox(height: 40,),
                        MaterialButton(onPressed: (){
                          _formValidKey();

                        },
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.login,color: Colors.green,),
                                SizedBox(width: 6,),
                                Text('SignUp',style: TextStyle(color: Colors.green,fontSize: 15),)
                              ],
                            ),
                          ),
                        )

                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        )

    );
  }
}


