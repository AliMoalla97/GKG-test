
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyLoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

 
    return Scaffold(
      
      body:SingleChildScrollView( child:
      Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FittedBox(
                     child: Image.asset(
                        'images/Login.png',
                        width:  MediaQuery. of(context). size.width,
                        //height:  MediaQuery. of(context). size.height,
                          fit: BoxFit.none,
                    ),
                    )
                  ],
                ),
                         Container(
            child: Text ("Welcome" , style:GoogleFonts.lato(fontWeight: FontWeight.w900 , color: Colors.black , fontSize: 40,decoration: TextDecoration.none, )),
          
          ),
        

         Container(
            padding:  const EdgeInsets.only(top: 40,right: 30,left: 30),
            child:TextField(  
                    decoration: InputDecoration(  
                      fillColor: Colors.white,
                      
                      border: OutlineInputBorder(),  
                   //s   labelText: 'User Name',  
                      
                      hintText: 'Enter Your Name',  
                    ),  
                  ),  

          ),
          Container(
              padding:  const EdgeInsets.only(top: 30,right: 30,left: 30),
              child:TextField(  
                obscureText: true,
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                   //s   labelText: 'User Name',  
                      
                      hintText: 'Enter Your password',  
                    ),  
                  ),  

              ),


                Container(
              padding:  const EdgeInsets.only(top: 4,right: 30,left: 30),
              child: TextButton(
                    
                child: Text('Forgot you password?', style: TextStyle(fontSize: 13 , color: Colors.grey),), 
                
                onPressed: () {},  
              ),

              ),

                  Container(
              padding:  const EdgeInsets.only(top: 4,right: 30,left: 30),
              child: SizedBox(
                width: 400,
                
                child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:Color(0xFF23233C) ,
              padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
          child: const Text(
            'Login',
            style: TextStyle(fontSize: 20 ,color: Colors.white),
          ),
          onPressed: () {},
            ),
              ),

              ),

                Container(
              padding:  const EdgeInsets.only(top: 4,right: 30,left: 30),
              child: TextButton(
                    
                child: RichText(
                text: TextSpan(
                style: const TextStyle(
                  fontSize: 14.0,
                     color: Colors.grey,
                    ),
                 children: <TextSpan>[
                  TextSpan(text: 'Don\'t have an account? '),
                  TextSpan(text: 'sign up', style: const TextStyle(fontWeight: FontWeight.bold)),
                   ],
                  ),
                  ),
                onPressed: () {},  
              ),

              ),

                    Container(
               padding: const EdgeInsets.only(top: 1 ), 
             child: Row(
              children: [
          


   Container(
                    padding: const EdgeInsets.only(left:100  ), 
                  child: SizedBox(
                       width:  100,
                        height: 75,
                        
                    child: IconButton(
                  
                   icon: Image.asset(
                        'images/F.png',
                       
                          fit: BoxFit.scaleDown,
                    ),
                
                   color: Colors.white,
                  onPressed: () {},
               ),),
                ),

      Container(
                    padding: const EdgeInsets.only(left:2  ), 
                  child: SizedBox(
                       width:  100,
                        height: 75,
                        
                    child: IconButton(
                  
                   icon: Image.asset(
                        'images/G.png',
                       
                          fit: BoxFit.scaleDown,
                    ),
                
                   color: Colors.white,
                  onPressed: () {},
               ),),
                ),


              ],
             )
 
            ),

              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FittedBox(
                     child: Image.asset(
                        'images/Login2.png',
                        width:  MediaQuery. of(context). size.width,
                        //height:  MediaQuery. of(context). size.height,
                          fit: BoxFit.none,
                    ),
                    )
                  ],
                ),


      ])
    ));
  } 
}
