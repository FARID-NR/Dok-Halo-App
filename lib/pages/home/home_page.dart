import 'package:clone_halodoc/theme.dart';
import 'package:clone_halodoc/widgets/pilihDokter.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    Widget cariDokter(){
      return Container(
        height: 56,
        margin: EdgeInsets.only(top: 25),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16
        ),
        decoration: BoxDecoration(
          color: containerInputColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Row(
          children: [
            Expanded(
              child: TextFormField(
                    style: textStyleBlack,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Cari nama dokter atau spesialis',
                      hintStyle: textInputColorStyle.copyWith(
                        fontSize: 15,
                        fontWeight: medium
                      )
                    ),
                  ),
            ),
                // Spacer(),
                Image.asset(
              'assets/icon_search.png',
              width: 25,
            ),
            
          ],
        ),
            
      );
    }

    Widget recomedTitle(){
      return Container(
        margin: EdgeInsets.only(
          top: 20
        ),
        child: Text(
          'Rekomendasi Dokter',
          style: textStyleBlack.copyWith(
            fontSize: 19,
            fontWeight: semiBold
          ),
        ),
      );
    }

    Widget recomendDokter(){
      return Expanded(
        child: Container(
          width: double.infinity,
          color: bgColor1,
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10
            ),
            children: [
              PilihDokter(),
              PilihDokter(),
              PilihDokter(),
              PilihDokter(),
              PilihDokter(),
              PilihDokter(),
              PilihDokter(),
              PilihDokter(),
            ],
          ),
        ),
      );
    }

    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 15
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            cariDokter(),
            recomedTitle(),
            recomendDokter()
          ],
        ),
      ),
    );
  }
}