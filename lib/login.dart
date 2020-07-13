import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: true,
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Login",style: TextStyle(color: Colors.white,),),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      backgroundColor: Color(0xffbcaaa4),
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

   String _email;
   String _password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
//      crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          //Register
          Container(
            child: Align(
              alignment: Alignment(0.90,1),
              child: RaisedButton(
                //TODO : Implement Register


                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(color: Colors.black),

                ),
                child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 20),),
                //textColor: Colors.white,
              ),

            ),
          ),

          SizedBox(
            height: 20.0,
          ),

          Align(
            alignment: Alignment.center,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage("https://previews.123rf.com/images/infadel/infadel1412/infadel141200068/34752811-wrench-and-hammer-on-white-background-concept-of-building-and-creating-flat-design-modern-vector-ill.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),

          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50.0,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[

                    //Email
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(

                        validator: (value) {
                          if(value.isEmpty) {
                            return "required";
                          }
                          return null;
                        },

                        onSaved: (value) {
                          _email = value;
                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(fontSize: 20.0),
                          prefixIcon: Icon(Icons.email,color: Theme.of(context).primaryColor,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.tealAccent),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                        ),
                      ),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    //Password
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: TextFormField(

                        validator: (value) {
                          if(value.isEmpty) {
                            return "required";
                          }
                          return null;
                        },

                        onSaved: (value) {
                          _password = value;
                        },
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(fontSize: 20.0),
                          prefixIcon: Icon(Icons.account_circle,color: Theme.of(context).primaryColor,),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.tealAccent),
                          ),
                          fillColor: Colors.white,
                          filled: true,

                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 40.0,
                ),

                //Login
                Container(
                  child: RaisedButton(
                    //TODO: Login Button
                    onPressed: () {
                      if(_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(SnackBar(content: Text("Processing")));
                      }


                    },
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    color: Theme.of(context).primaryColor,
                    disabledColor: Theme.of(context).primaryColor,
                    child: Text("login",style: TextStyle(color: Colors.white,fontSize: 20),),
                    textTheme: ButtonTextTheme.accent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                        color: Colors.black,
                        width: 5.0,
                        style: BorderStyle.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

