import 'package:flutter/material.dart';

class Productitem extends StatelessWidget {
  final String derece;
  final String hava_durumu;
  final String konum;
  final String foto;

  const Productitem({
    Key? key,
    required this.derece,
    required this.konum,
    required this.foto,
    required this.hava_durumu,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: 300,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xFF1B1D2E),
        ),
        child: Row(
          //populer bolge icerikleri
          children: [
            //hava durumu,konum ve derece yazisi
            Column(
              children: [
                //derece ve hava durumu yazisi
                Row(
                  children: [
                    //derece
                    Padding(
                      padding: const EdgeInsets.only(left: 19, top: 20),
                      child: Text(
                        derece,
                        style: TextStyle(
                          fontSize: 23,
                        ),
                      ),
                    ),
                    //hava durumu
                    Padding(
                      padding: const EdgeInsets.only(left: 19, top: 23),
                      child: Text(
                        hava_durumu,
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                //konum yazisi
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 19, top: 7),
                      child: Text(
                        konum,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //resim
            Padding(
              padding: const EdgeInsets.only(left:40),
              child: ClipRRect(
                child: Image(
                  height: 100,
                  width: 100,
                  image: AssetImage(foto),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
