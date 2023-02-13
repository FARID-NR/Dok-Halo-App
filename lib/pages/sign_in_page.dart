import 'package:clone_halodoc/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget emailInput(){
      return Container(
        height: 56,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: containerInputColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: TextFormField(
            style: textStyleBlack,
            decoration: InputDecoration.collapsed(
              hintText: 'Email',
              hintStyle: textInputColorStyle.copyWith(
                fontSize: 15,
                fontWeight: medium
              )
            ),
          ),
        ),
      );
    }

    Widget passwordInput(){
      return Container(
        height: 56,
        width: double.infinity,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: containerInputColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Center(
          child: TextFormField(
            style: textStyleBlack,
            obscureText: true,
            decoration: InputDecoration.collapsed(
              hintText: 'Password',
              hintStyle: textInputColorStyle.copyWith(
                fontSize: 15,
                fontWeight: medium
              )
            ),
          ),
        ),
      );
    }

    Widget buttonMasuk(){
      return Container(
        height: 56,
        width: double.infinity,
        margin: EdgeInsets.only(top: 55),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'home');
          },
          style:TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
          ) ,
          child: Text(
            'Masuk',
            style: textWhiteStyle.copyWith(
              fontSize: 19,
              fontWeight: semiBold
            ),
          ),
        ),
      );
    }

    Widget regist(){
      return Container(
        margin: EdgeInsets.only(top: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum punya akun? ',
              style: textStyleGrey.copyWith(
                fontWeight: semiBold,
                fontSize: 15
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'sign-up');
              },
              child: Text(
                'Daftar',
                style: textStylePrimaryColor.copyWith(
                  fontWeight: semiBold,
                  fontSize: 15
                ),
              ),
            )
          ],
        ),
      );
    }


    return Scaffold(
      backgroundColor: bgColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            top: 235,
            left: 15,
            right: 15
          ),
          child: Column(
            children: [
              emailInput(),
              passwordInput(),
              buttonMasuk(),
              regist()
            ],
          ),
        )
        ),
    );

  }
}