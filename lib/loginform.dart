import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



class LoginForm extends StatefulWidget {

  @override
  _LoginFormState createState() => _LoginFormState();

}

class _LoginFormState extends State<LoginForm> {

  bool isRememberMe = false;
  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0,2),
                  )
                ]
            ),
            height: 60,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xFF00BCD4),
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                      color: Colors.black
                  )
              ),
            )
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6,
                    offset: Offset(0,2),
                  )
                ]
            ),
            height: 60,
            child: const TextField(
              obscureText: true,
              style: TextStyle(
                  color: Colors.black
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xFF00BCD4),
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.black
                  )
              ),
            )
        )
      ],
    );
  }

  
  Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
        child: ElevatedButton(
          child: const Text('LOGIN'),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 5,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            backgroundColor: Colors.white
          )
    ),
    );
  }

  Widget buildSignUpBtn() {
    return GestureDetector(
      onTap: () => print('Sign Up Pressed'),
      child: RichText(
        text: const TextSpan(
          children: [
            TextSpan(
              text: 'Don\'t have an Account? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                  fontWeight: FontWeight.w500
              )
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                    fontSize: 18,
                fontWeight: FontWeight.bold
              )
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors: [
                     Color(0xFFE0F7FA),
                     Color(0xFFB2EBF2),
                     Color(0xFF80DEEA),
                     Color(0xFF4DD0E1),
                     Color(0xFF26C6DA),
                     Color(0xFF00BCD4),
                     Color(0xFFB2EBF2),
                     Color(0xFFE0F7FA),

                   ]
                  ),
                ),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120
                  ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 50),
                        buildEmail(),
                        SizedBox(height: 20),
                        buildPassword(),
                        buildLoginBtn(),
                        buildSignUpBtn(),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}