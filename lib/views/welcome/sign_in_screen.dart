import 'package:flutter/material.dart';
import 'package:school_erp/utill/utils_image.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    var size  = MediaQuery.of(context).size;
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30,left: 90) ,
                child: Image(
                  height: 210,
                  width: size.width*5,
                  image: AssetImage(UtilsImage.SPLESH_SCREEN_BOTTOM_IMAGE_WITHOUT_CIRCULE),
                  fit: BoxFit.fill,
                ),

              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hi Student",style:TextStyle( color:Colors.white,fontWeight: FontWeight.normal,fontSize:25,)),
                    Text("Sign In to continue",style:TextStyle( color:Colors.white54,fontWeight: FontWeight.normal,fontSize:12,)),
                  ],
                ),
              ),



              Container(
                margin: EdgeInsets.only(top: 5),
                width: double.infinity,
                height: size.height*0.566,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),

                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                      children: [


                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextField(
                                  controller: _emailController,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    labelText: 'Mobile Number/Email',
                                    labelStyle: TextStyle(color: Colors.grey)
                                  ),
                                ),
                                SizedBox(height: 16.0),
                                TextField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    labelText: 'Password',
                                      labelStyle: TextStyle(color: Colors.grey)

                                  ),
                                ),
                                SizedBox(height: 16.0),
                                ElevatedButton(
                                  onPressed: () {
                                    // Perform login logic here
                                    String username = _emailController.text;
                                    String password = _passwordController.text;
                                    // Add your authentication logic here
                                  },
                                  child: Text('Login'),
                                ),
                              ]
                          ),
                        ),
                      ]
                  ),

                ),
              ),

            ]
        ),
      ),
    ),
    );
  }
}
