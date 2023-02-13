import 'package:clone_halodoc/pages/detail_dokter.dart';
import 'package:clone_halodoc/pages/dokter_chat_page.dart';
import 'package:clone_halodoc/pages/home/main_page.dart';
import 'package:clone_halodoc/pages/metode_bayar.dart';
import 'package:clone_halodoc/pages/page_bayar.dart';
import 'package:clone_halodoc/pages/profile_edit_page.dart';
import 'package:clone_halodoc/pages/profile_saya_page.dart';
import 'package:clone_halodoc/pages/sign_in_page.dart';
import 'package:clone_halodoc/pages/sign_up_page.dart';
import 'package:clone_halodoc/pages/ubah_sandi_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => const SignInPage(),
        'sign-up':(context) => const SignUpPage(),
        'home':(context) => const MainPage(),
        'detailDokter':(context) => const DetailDokter(),
        'metodeBayar':(context) => const MetodeBayar(),
        'bayarPage':(context) => const BayarPage(),
        'chatDokter':(context) => const ChatDokter(),
        'profileSaya':(context) => const ProfileSaya(),
        'profilEdit':(context) => const ProfileEdit(),
        'editSandi':(context) => const EditSandi(),

      },
    );
  }
}