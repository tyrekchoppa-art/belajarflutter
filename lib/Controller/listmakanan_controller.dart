import 'package:get/get.dart';
import 'package:belajarflutter/models/makanan_model.dart';

class ListMakananController extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Nasi Goreng",
      hargaMakanan: "Rp. 15.000",
      gambar:
          "https://images.unsplash.com/photo-1603133872878-684f208fb84b",
      desc: "Nasi goreng dengan bumbu khas dan telur.",
      rating: 5,
      review: "Enak dan porsinya banyak.",
    ),

    MakananModel(
      namaMakanan: "Nasi Uduk",
      hargaMakanan: "Rp. 12.000",
      gambar:
          "https://images.unsplash.com/photo-1512058564366-18510be2db19",
      desc: "Nasi uduk gurih dengan lauk dan sambal.",
      rating: 4,
      review: "Rasanya enak dan gurih.",
    ),

    MakananModel(
      namaMakanan: "Sate Ayam",
      hargaMakanan: "Rp. 15.000",
      gambar:
          "https://images.unsplash.com/photo-1529563021893-cc83c992d75d",
      desc: "Sate ayam dengan bumbu kacang yang lezat.",
      rating: 5,
      review: "Dagingnya empuk dan bumbunya enak.",
    ),

    MakananModel(
      namaMakanan: "Sate Sapi",
      hargaMakanan: "Rp. 20.000",
      gambar:
          "https://images.unsplash.com/photo-1544025162-d76694265947",
      desc: "Sate sapi dengan bumbu khas dan daging sapi yang lezat",
      rating: 4,
      review: "Dagingnya enak dan tidak alot.",
    ),

    MakananModel(
      namaMakanan: "Es Teh",
      hargaMakanan: "Rp. 5.000",
      gambar:
          "https://images.unsplash.com/photo-1556679343-c7306c1976bc",
      desc: "Es teh manis yang segar.",
      rating: 5,
      review: "Segar dan cocok diminum bersama makanan.",
    ),
  ];
}