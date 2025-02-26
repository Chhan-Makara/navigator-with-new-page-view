import 'package:flutter/material.dart';

class SeeAllLatestMovies extends StatelessWidget {
  SeeAllLatestMovies({super.key, required this.text});

  final String text;

  List<String> lstLatest = [
    "https://lumiere-a.akamaihd.net/v1/images/p_moana2_v3_94b2f083.jpeg",
    "https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg",
    "https://images.squarespace-cdn.com/content/v1/5a7f41ad8fd4d236a4ad76d0/1669842753281-3T90U1EY5HUNCG43XERJ/A2_Poster_DC_v80_PAYOFF_221029_12trimHD.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_snowwhite_payoff_2d8d4ae0.jpeg",
    "https://resizing.flixster.com/c7fcjCvkHP4wiDlEdVRusMXCOws=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzAzOWI1YzkwLTNiODAtNDNmYy05MTA1LTViZjg4ZTgyYTc1MC5qcGc=",
    "https://www.ripefruitmedia.com.au/images_rfm/1223-130236796.jpg",
    "https://preview.redd.it/these-are-my-favourite-chinese-movies-what-are-yours-v0-ilyyvb0akbic1.jpg?width=900&format=pjpg&auto=webp&s=6d434a0ea94ab903fe3f2f89d151a7d3c5f38cb3",
    "https://qqcdnpictest.mxplay.com/pic/bce7ae02445dad432bdab581e180ceef/en/2x3/312x468/d5f863cd13cc307123989701f8b72fdf_1280x1920.webp",
    "https://static.toiimg.com/photo/90355881.cms",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(text)),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          childAspectRatio: 0.6, //កំណត់ទំហំរូបភាព
        ),
        itemCount: lstLatest.length,
        itemBuilder: (context, index) {
          final all = lstLatest[index];
          return Image.network(all, fit: BoxFit.cover);
        },
      ),
    );
  }
}
