import 'package:flutter/material.dart';
import 'package:shopping_ui/features/auth/screens/login/login.dart';
import 'package:shopping_ui/features/auth/screens/login/signup.dart';
import 'package:shopping_ui/utils/constants/image_strings.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Expanded(
                  child: Container(
                    height: 500,
                    width: 80,
                    decoration: BoxDecoration(
                      image:  DecorationImage(image: AssetImage(TImages.banner8),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    
                               
                                
                  ),
                ),
                SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 500,
                    width: 80,
                 
                    decoration: BoxDecoration(
                      image:  DecorationImage(image:  NetworkImage("https://cdn.prod.website-files.com/654366841809b5be271c8358/659efd7c0732620f1ac6a1d6_why_flutter_is_the_future_of_app_development%20(1).webp"),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)
                    )
                    ),
                  )
           
              ],
            ),
            SizedBox(height: 20),
            Row(children: [
              Expanded(
                child: ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignupScreen()));
                
                }, child: Text("Sign UP",style: TextStyle(color: Colors.white,fontSize: 40),)),
              ),
              SizedBox(width: 10),
                            Expanded(
                              child: ElevatedButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                              
                                            }, child: Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 40),)),
                            )

            ],)
          ],
        ),
      ),
    )
    
    ;
  }
}
