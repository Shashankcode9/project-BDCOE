import 'package:flutter/material.dart';
import 'package:language_learner/sign_up_page.dart';
import 'login_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("Hello There\nVocaVerse",
                  style: TextStyle(color:Colors.white,fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'ubuntu'),),
            ],
          ),
          SizedBox(height: 50,),
          Image.asset('assets/images/welcomepage.png',fit: BoxFit.fill),
         Text("Existing User",style: TextStyle(fontFamily: 'ubuntu',fontSize:25,color: Colors.white),),
         SizedBox(height: 15,),
         ElevatedButton(onPressed: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => login(),),);
         },style: ElevatedButton.styleFrom(
           primary: Colors.white,
           onPrimary: Colors.black,
             minimumSize: Size(300,50)
         ), child:
         Text("Sign In",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),

         ),
          SizedBox(height: 20,),
          Text("Dont Have An Account ??",style: TextStyle(fontFamily: 'ubuntu',fontSize:21,color: Colors.white),),
          SizedBox(height: 15,),
          ElevatedButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => signup()));
          },
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.black,
              minimumSize: Size(300,50)
          ), child:
          Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),

          ),
        ],
      ),



    );
  }
}
