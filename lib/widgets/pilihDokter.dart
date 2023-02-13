import 'package:clone_halodoc/theme.dart';
import 'package:flutter/material.dart';

class PilihDokter extends StatelessWidget {
  const PilihDokter({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'detailDokter');
      },
      child: Container(
        margin: EdgeInsets.only(top: 17),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [ 
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 1.5,
              offset: Offset(0, 0))
        ], 
        borderRadius: BorderRadius.circular(8), color: white),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/dokter.png',
                width: 81,
                height: 80,
              ),
            ),
            SizedBox(width: 14),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Dr. Ronald Richard',
                  style: textStyleBlack.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
                SizedBox(height: 10),
                Text(
                  'Spesialis Kulit',
                  style: textStyleBlack.copyWith(
                      fontSize: 11, fontWeight: medium),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Rp 45.000',
                      style: textStyleOrange.copyWith(
                          fontSize: 13, fontWeight: medium),
                    ),
                    Container(
                      width: 49.2,
                      height: 42.5,
                      ),
                    Container(
                    height: 37,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'detailDokter');
                      },
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 14),
                          backgroundColor: primaryColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                      child: Text(
                        'Mulai Chat',
                        style: textWhiteStyle.copyWith(
                            fontSize: 15, fontWeight: medium),
                      ),
                    ),
                  ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
