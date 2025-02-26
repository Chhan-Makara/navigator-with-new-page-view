import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigator_with_new_pageview/see_all_latest_movies.dart';
import 'package:navigator_with_new_pageview/see_all_most_popular.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  List<String> lstPopular = [
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://static.toiimg.com/photo/90355881.cms",
    "https://lumiere-a.akamaihd.net/v1/images/p_moana2_v3_94b2f083.jpeg",
    "https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg",
    "https://images.squarespace-cdn.com/content/v1/5a7f41ad8fd4d236a4ad76d0/1669842753281-3T90U1EY5HUNCG43XERJ/A2_Poster_DC_v80_PAYOFF_221029_12trimHD.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_snowwhite_payoff_2d8d4ae0.jpeg",
  ];

  List<String> lstLatestMovies = [
    "https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg",
    "https://images.squarespace-cdn.com/content/v1/5a7f41ad8fd4d236a4ad76d0/1669842753281-3T90U1EY5HUNCG43XERJ/A2_Poster_DC_v80_PAYOFF_221029_12trimHD.jpg",
    "https://lumiere-a.akamaihd.net/v1/images/p_snowwhite_payoff_2d8d4ae0.jpeg",
    "https://m.media-amazon.com/images/M/MV5BODIxY2NkYWEtNWE3ZS00NDZhLWFlMDktMTE0NDNlZDk0MzAyXkEyXkFqcGc@._V1_.jpg",
    "https://static.toiimg.com/photo/90355881.cms",
    "https://lumiere-a.akamaihd.net/v1/images/p_moana2_v3_94b2f083.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://static.vecteezy.com/system/resources/thumbnails/023/407/686/small/cinema-emblem-logo-icon-movie-film-symbol-blue-simple-png.png",
              height: 50,
              width: 50,
            ),
            SizedBox(width: 10),
            Text(
              "Movie KH",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: GoogleFonts.saira().fontFamily,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "Most popular",
                    style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  SeeAllMostPopular(title: "Most popular"),
                        ),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lstPopular.length,
                  itemBuilder: (context, index) {
                    final popular = lstPopular[index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Image.network(popular, fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          //latest movies
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "Latest Movies",
                    style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) =>
                                  SeeAllLatestMovies(text: "Latest Movies"),
                        ),
                      );
                    },
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lstPopular.length,
                  itemBuilder: (context, index) {
                    final latest = lstLatestMovies[index];
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Image.network(latest, fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
