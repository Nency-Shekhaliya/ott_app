import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ott_app/views/screens/web_page.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatefulWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "OTT APP",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                    items: [
                      Mybox(
                          pic:
                              "https://secure-media.hotstar.com/web-assets/prod/images/Disney+Hotstar.jpg",
                          path1: 'https://www.hotstar.com/in'),
                      Mybox(
                          pic:
                              "https://variety.com/wp-content/uploads/2020/05/netflix-logo.png",
                          path1: 'https://www.netflix.com/in/'),
                      Mybox(
                          pic:
                              "https://m.media-amazon.com/images/G/01/primevideo/seo/primevideo-seo-logo.png",
                          path1:
                              'https://www.primevideo.com/?ref_=dvm_pds_amz_in_as_s_gm_154_mkw_sacgiZpYm-dc&mrntrk=pcrid_610141119732_slid__pgrid_84577172328_pgeo_1007760_x__adext__ptid_kwd-308511887268&gclid=CjwKCAjw_MqgBhAGEiwAnYOAejBUPqnW28NdrE6Jgiai0i5wxhv871PUw32bDe8e6Sq3XKLorCdMFxoCngEQAvD_BwE'),
                      Mybox(
                          pic:
                              "https://images.news18.com/ibnlive/uploads/2020/06/1592394351_sonyliv-new-logo.jpg",
                          path1:
                              'https://www.sonyliv.com/subscription?utm_source=google&utm_medium=paid&utm_campaign=IN_MSixSonyLIV_NA_Performance_AlwaysON_Brand_Launch_Search_Subscriptions_India_Apr_2022_V0&utm_content=Brand&gclid=CjwKCAjw_MqgBhAGEiwAnYOAesQ0M81mDNSe8rd6FhmF1KV6yC1RblFCY9BOF4KlBl_UOXT81WIOSxoCS7kQAvD_BwE'),
                    ],
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (i, result) {
                        setState(() {
                          currentindex = i;
                        });
                      },
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 25, left: 15),
                  alignment: Alignment.centerLeft,
                  height: 30,
                  child: const Text(
                    "Related Apps",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Mybox2(
                        pic:
                            "https://yt3.googleusercontent.com/ytc/AL5GRJWRvwE8zdlzJAT_48HzZ2OoFGm5AzWWWNQyMCvOmA=s900-c-k-c0x00ffffff-no-rj",
                        path1:
                            'https://www.zee5.com/?utm_source=GoogleSearch&utm_medium=Mark_CPA&utm_campaign=Search_SVOD_ZEE5-Brand-ZEE5-Only-Ex-Performance&utm_term=www%20zee5&utm_content=Brand-ZEE5-Only-Ex&&&gclid=CjwKCAjw_MqgBhAGEiwAnYOAeuci6GSkfwwp4s4rkDa8PDIkjCyB2m9Tz3ZJD4CpWU-ZhdHe10EzpRoC9MsQAvD_BwE&gclsrc=aw.ds'),
                    Mybox2(
                        pic:
                            "https://play-lh.googleusercontent.com/70qBcFj4OSFhN2rPIiXadUvtSRSvSy4AAVvgWkKS3_PeUEabtIKL8gsDKbvjhSBa4UI",
                        path1: 'https://www.voot.com/'),
                    Mybox2(
                        pic:
                            "https://assets-6.mxplay.com/static/images/logo-dark.png",
                        path1: 'https://www.mxplayer.in/'),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 15),
                  alignment: Alignment.centerLeft,
                  height: 30,
                  child: const Text(
                    "Popular Shows",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Mybox3(
                          pic:
                              "https://img1.hotstarext.com/image/upload/f_auto,t_web_vl_2_5x/sources/r1/cms/prod/8774/1028774-v-85c7d8f07559",
                          path1:
                              'https://www.hotstar.com/in/tv/anupama/1260022017'),
                      Mybox3(
                          pic:
                              "https://m.media-amazon.com/images/M/MV5BMGNjZTI1ODktMWMxYi00MjI4LTkyOWEtOTNkMDY5OGUzYmU3XkEyXkFqcGdeQXVyODUwODgwOTY@._V1_.jpg",
                          path1:
                              'https://www.zee5.com/tv-shows/details/kundali-bhagya/0-6-366'),
                      Mybox3(
                          pic:
                              "https://m.media-amazon.com/images/M/MV5BNDQ4MTE5YzItMmY2OS00NGViLTlkYjctZWVhYTdhZWY4N2UyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_UY1200_CR285,0,630,1200_AL_.jpg",
                          path1:
                              'https://www.ottplay.com/show/web-series-rana-naidu-2023/b540e693ef223'),
                      Mybox3(
                          pic:
                              "https://m.media-amazon.com/images/M/MV5BNThlNGZjZDQtYzJjMi00MzM4LWFkNjctNDMwZmFjNWJkM2I4XkEyXkFqcGdeQXVyMTUzNTgzNzM0._V1_FMjpg_UX1000_.jpg",
                          path1:
                              'https://www.primevideo.com/detail/0HDHQAUF5LPWOJRCO025LFJSJI/ref=atv_sr_def_c_unkc_1_1_1?sr=1-1&pageTypeIdSource=ASIN&pageTypeId=B0B8L3D5S1&qid=1678718762271'),
                      Mybox3(
                          pic:
                              "https://m.media-amazon.com/images/M/MV5BOTAwOWQ2NmQtNjZiOC00ZTEyLWJlZmQtMjNjYWVkMzM0NTY5XkEyXkFqcGdeQXVyMTAyMTE1MDA1._V1_.jpg",
                          path1:
                              'https://www.sonyliv.com/shows/scam-1992-the-harshad-mehta-story-1700000292'),
                    ],
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.black,
        );
      }),
    );
  }

  Mybox({required String pic, required String path1}) =>
      Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => App_Page(link: path1)));
          },
          child: Container(
            margin: const EdgeInsets.all(3),
            height: 180,
            width: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: NetworkImage(pic), fit: BoxFit.fill),
              border: Border.all(color: Colors.white, width: 1),
              color: Colors.pink,
            ),
          ),
        );
      });
  Mybox2({required String pic, required String path1}) =>
      Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => App_Page(link: path1)));
          },
          child: Container(
            margin: const EdgeInsets.only(
              left: 15,
              top: 10,
            ),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: NetworkImage(pic), fit: BoxFit.fill),
              color: Colors.white,
            ),
          ),
        );
      });
  Mybox3({required String pic, required String path1}) =>
      Builder(builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => App_Page(link: path1)));
          },
          child: Container(
            margin: const EdgeInsets.only(
              left: 15,
              top: 10,
            ),
            height: 200,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image:
                  DecorationImage(image: NetworkImage(pic), fit: BoxFit.fill),
              color: Colors.pink,
            ),
          ),
        );
      });
}
