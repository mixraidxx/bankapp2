import 'package:bankapp2/Brand/Extensions.dart';
import 'package:bankapp2/Brand/TransactionItem.dart';
import 'package:bankapp2/Views/AccountDetailView.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imageList = [
      "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg"
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("David Enriquez Solis",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: ExactAssetImage("assets/perfil.jpeg"),
                        fit: BoxFit.fitHeight)),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GFCarousel(
                aspectRatio: 2,
                enableInfiniteScroll: false,
                reverse: false,
                items: imageList.map(
                  (url) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AccountDetailView.routeName);
                      },
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFBA8BBB), Color(0xFFFD8B67)],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight),
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$12,525",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "VISA",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: Container()),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "1234 **** **** 4321",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "03/24",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {},
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Text("Ultimos movimientos",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
              ),
              TransacctionItem(
                  title: "Uber",
                  detail: "27 de junio",
                  amount: "125.00",
                  image: "uber"),
              TransacctionItem(
                  title: "Netflix",
                  detail: "25 de junio",
                  amount: "125.00",
                  image: "netflix")
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: Card(
              //     elevation: 0,
              //     color: BrandColors.backgroundColorVariant2,
              //     child: Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Row(
              //         children: [
              //           Text("gdfgdf"),
              //         ],
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ));
  }
}
