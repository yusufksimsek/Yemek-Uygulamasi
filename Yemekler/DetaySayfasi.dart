import 'package:flutter/material.dart';
import 'package:listview_yemekuygulamasi/Yemekler/Yemekler.dart';

class DetaySayfasi extends StatefulWidget {

  Yemekler yemek;


  DetaySayfasi({required this.yemek});

  @override
  State<DetaySayfasi> createState() => _DetaySayfasiState();
}

class _DetaySayfasiState extends State<DetaySayfasi> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.yemek.yemek_resim_adi}"),
            Text("${widget.yemek.yemek_fiyat} \u{20BA}",style: TextStyle(fontSize: 35,color: Colors.blue),),
            SizedBox(
              width: 170,
              height: 50,
              child: TextButton(
                onPressed: (){
                  print("${widget.yemek.yemek_adi} Siparişi Verildi");
                },
                  child: Text("SİPARİŞ VER",style: TextStyle(color: Colors.white,fontSize: 18),),
                style: const ButtonStyle(

                  backgroundColor: MaterialStatePropertyAll(Colors.orange),
                ),
              ),
            ),
          ],

        ),
      ),

    );
  }
}
