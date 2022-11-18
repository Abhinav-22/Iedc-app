
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    RegExp regEx = new RegExp(r"(?=.*[a-z])(?=.*[A-Z])\w+");
    
  late String _name, _email, _password;
  late int ucount;
  var id='';
  checkAuthentication() async {
   
  }
  

  @override
  void initState() {
    super.initState();
    checkAuthentication();
  }

  
    navigateToAdminHome() async {
    Navigator.pushReplacementNamed(context, "Adminhome");
  }
  showError(String errormessage) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 39, 38, 38),
            title: Text('ERROR',style: TextStyle(color: Colors.white),),
            content: Text(errormessage,style: TextStyle(color: Colors.white),),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK',style: TextStyle(color: Colors.white),))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff121212),
      
        body: SingleChildScrollView(
      child: Container(
        height: 900,
        decoration: BoxDecoration(
          gradient: LinearGradient(
               colors: [Color(0xff121212), Color.fromARGB(255, 35, 39, 49),],
              begin: Alignment.bottomLeft,
               end: Alignment.topRight,
            
          )
         ),  
        child:
        Container(
          //height: 900,
          alignment: Alignment.center,
         margin: const EdgeInsets.fromLTRB(25, 180, 25, 180),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            
            color: Color(0xff1d1d1d).withOpacity(0.1),
            border: Border.all(color: Color.fromARGB(155, 255, 255, 255),width: 3),
            borderRadius: BorderRadius.circular(20.0)
          ),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: <Widget>[
            Expanded(child: 
            Container(
              
              //height: 200,
              child: Image(
                image: AssetImage("images/iedc_logo.png"),
                fit: BoxFit.contain,
              ),
            ),
            ),
            Expanded(child: 
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  
                  children: <Widget>[
                    
                    Expanded(child: 
                    Container(
                      padding: new EdgeInsets.all(3.0),
                      child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          validator: (input) {
                            if (input!.isEmpty) return 'Enter Email';
                          },
                          decoration: InputDecoration(
                              labelText: 'Email',
                               labelStyle: TextStyle(color: Color.fromARGB(155, 255, 255, 255)),
                              filled: true,
                              fillColor: Color.fromARGB(0,40, 49, 73),
                               enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(155, 255, 255, 255), width: 2.0),
                ),
                              prefixIcon: Icon(Icons.email,color: Color.fromARGB(155, 255, 255, 255),),),
                          onSaved: (input) => _email = input!),
                    ),
                    ),
                    Expanded(child: 
                    Container(
                      padding: new EdgeInsets.all(3.0),
                      child: TextFormField(
                          style: TextStyle(color: Color.fromARGB(155, 255, 255, 255)),
                          validator: (input) {
                            if (input!.length < 6)
                              return 'Provide Minimum 6 Character';

                            if (!regEx.hasMatch(input))
                              return 'Provide an Uppercase and Lowercase character';
                          },
                          decoration: InputDecoration(
                            labelText: 'Password',
                             labelStyle: TextStyle(color: Color.fromARGB(155, 255, 255, 255)),
                              filled: true,
                              fillColor: Color.fromARGB(0,40, 49, 73),
                               enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromARGB(155, 255, 255, 255), width: 2.0),
                ),
                            prefixIcon: Icon(Icons.lock,color: Color.fromARGB(155, 255, 255, 255),),
                          ),
                          obscureText: true,
                          onSaved: (input) => _password = input!),
                    ),
                    ),
                    //SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                      primary:  Color.fromARGB(255, 35, 39, 49).withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        side: BorderSide(color: Color.fromARGB(155, 255,215,0))
                      ),
                      ),
                      
                      onPressed: navigateToAdminHome,
                      child: Text('Sign In',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold)),
                      // color: Color.fromARGB(255, 35, 39, 49).withOpacity(0.3),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(20.0),
                      //   side: BorderSide(color: Color.fromARGB(155, 255,215,0))
                      // ),
                      
                      
                    ),
                    SizedBox(height: 20,)
                    
                  ],
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    )
    )
    );
  }
}