import 'package:flutter/material.dart';
import 'login_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("Welcome  To\nVocaVerse",
                  style: TextStyle(color:Colors.white,fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'assets/PlayfairDisplay-Bold.ttf'),),
            ],
          ),
          Image.asset('assets/images/welcome.png',fit: BoxFit.fill),
         Text("Existing User",style: TextStyle(fontFamily: 'lgn',color: Colors.white),),
         SizedBox(height: 15,),
         ElevatedButton(onPressed: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => login(),),);
         },style: ElevatedButton.styleFrom(
           primary: Colors.white,
           onPrimary: Colors.black,
             minimumSize: Size(300,50)
         ), child:
         Text("Sign In",style: TextStyle(fontWeight: FontWeight.w700),),

         ),
          SizedBox(height: 20,),
          Text("Dont Have An Account ??",style: TextStyle(fontFamily: 'lgn',color: Colors.white),),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              minimumSize: Size(300,50)
          ), child:
          Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w700),),

          ),
        ],
      ),



    );
  }
}
