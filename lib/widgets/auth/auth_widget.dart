import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_button_style.dart';

class AuthWidget extends StatefulWidget{
  AuthWidget({Key? key}): super (key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

  class _AuthWidgetState extends State<AuthWidget>{
    @override
    Widget build (BuildContext context){
      return Scaffold(
        appBar: AppBar(title: Text('Login to your account', 
        style: TextStyle(color: Colors.white),),
        ),
        body: ListView(
          children: [_HeaderWidget(),
          ],
        )
      );
    }
  }

  class _HeaderWidget extends StatelessWidget{
    const _HeaderWidget({Key? key}): super(key: key);

    @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
            fontSize: 16,
            color: Colors.black,
          );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25,),
          _FromWidget(),
          SizedBox(height: 25,),
          Text('In order to use the editing and rating capabilities of TMDb, as weii as get personal recomendations you wil need to login to your account. If you do not have an account, registering fot an account is free and simple. ',
          style: textStyle,
          ),
          SizedBox(height: 5,),
          TextButton(
            onPressed: (){}, 
            style:  AppButtonStyle.linkButton,
            child: Text('Register'),
            ),
          SizedBox(height: 25,),
          Text('If you signed up but did not get your verification email. ', 
          style: textStyle,
          ),
          SizedBox(height: 5,),
           TextButton(
            onPressed: (){}, 
            style:  AppButtonStyle.linkButton,
            child: Text('Verification email'),
            ),
        ],
      ),
    );
  }
  }

  class _FromWidget extends StatefulWidget{
    _FromWidget({Key? key}): super(key: key);

    @override
    __FromWidgetState createState() => __FromWidgetState();
  }

  class __FromWidgetState extends State<_FromWidget>{
    final _loginTextColtroller = TextEditingController();
    final _passwordTextColtroller = TextEditingController();
    String? errorText = null ;

    void _auth(){
      final login = _loginTextColtroller.text;
      final password = _passwordTextColtroller.text;

      if(login == 'admin' && password == 'admin'){
        errorText = null;
        print('open app');
      }else{
        errorText = 'Неверный логин или пароль';
      }
      setState(() {
      });
    }

    void _resetpassword(){
      print('reset password');
    }

    @override
    Widget build(BuildContext context){
      final textStyle = const TextStyle(
            fontSize: 16,
            color: Color(0xFF212529),
          );

      final color = const Color(0xFF01B4E4);

      final textFieldDecoration = const InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF01B4E4))),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        isCollapsed: true);
        final errorText = this.errorText;
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(errorText != null) ...[
          Text(
            errorText,
            style: TextStyle(
              fontSize: 17,
              color: Colors.red,
              ),
            ),
          SizedBox(height: 20,),
          ],
          Text('Username',
          style: textStyle,),
          SizedBox(height: 5,),
          TextField(
            controller: _loginTextColtroller,
            decoration: textFieldDecoration,
          ),
          SizedBox(height: 20,),
          Text('Password',
          style: textStyle,),
          SizedBox(height: 5,),
          TextField(
            controller: _passwordTextColtroller,
            decoration: textFieldDecoration,
          obscureText: true,
          ),
          SizedBox(height: 25,),
          Row(
            children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(color),
                foregroundColor: WidgetStateProperty.all(Colors.white),
                textStyle: WidgetStateProperty.all(
                  TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                padding: WidgetStateProperty.all(
                  EdgeInsets.symmetric(
                    horizontal: 15, 
                    vertical: 8),
                ),
              ),
              onPressed: _auth, 
              child: Text('Login'),
            ),
            SizedBox(width: 30,),
            TextButton(
              onPressed: _resetpassword, 
              style:  AppButtonStyle.linkButton,
              child: Text('Reset password'),
            ),
          ],)

      ],
      );

    }
  }
  
