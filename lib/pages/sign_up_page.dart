import 'package:clone_halodoc/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget fullNameInput(){
      return Container(
        height: 56,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 159
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: containerInputColor
        ),
        child: Center(
          child: TextFormField(
            style: textStyleBlack,
            decoration: InputDecoration.collapsed(
              hintText: 'Nama Lengkap',
              hintStyle: textInputColorStyle.copyWith(
                fontSize: 15,
                fontWeight: medium
              )
            ),
          ),
        ),
      );
    }

    Widget usernameInput(){
      return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: containerInputColor
        ),
        child: Center(
          child: TextFormField(
            style: textStyleBlack,
            decoration: InputDecoration.collapsed(
              hintText: 'Username',
              hintStyle: textInputColorStyle.copyWith(
                fontSize: 15,
                fontWeight: medium
              )
            ),
          ),
        ),
      );
    }

    Widget noTelpInput(){
      return Container(
        height: 56,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: containerInputColor
        ),
        child: Center(
          child: TextFormField(
            style: textStyleBlack,
            decoration: InputDecoration.collapsed(
              hintText: 'Nomor Telepon',
              hintStyle: textInputColorStyle.copyWith(
                fontSize: 15,
                fontWeight: medium
              )
            ),
          ),
        ),
      );
    }

    Widget emailInput(){
      return Container(
        height: 56,
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 20
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: containerInputColor
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
        margin: EdgeInsets.only(
          top: 20
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 20
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: containerInputColor
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

    Widget buttonDaftar(){
      return Container(
        height: 56,
        width: double.infinity,
        margin: EdgeInsets.only(top: 55),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, 'home');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8)
            ),
          ),
          child: Text(
            'Daftar',
            style: textWhiteStyle.copyWith(
              fontSize: 19,
              fontWeight: semiBold
            )
          ),
        ),
      );
    }

    Widget backMasuk(){
      return Container(
        margin: EdgeInsets.only(top: 31),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sudah punya akun? ',
              style: textStyleGrey.copyWith(
                fontSize: 15,
                fontWeight: semiBold
              ),
              
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Masuk',
                style: textStylePrimaryColor.copyWith(
                  fontSize: 15,
                  fontWeight: semiBold
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
          margin: EdgeInsets.symmetric(
            horizontal: 15
          ),
          child: Column(
            children: [
              fullNameInput(),
              usernameInput(),
              noTelpInput(),
              emailInput(),
              passwordInput(),
              buttonDaftar(),
              backMasuk()
            ],
          ),
        ),
      ),
    );
  }
}