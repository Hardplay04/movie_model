import 'package:flutter/material.dart';
import 'package:movie_app/services/movie_services.dart';
import 'package:movie_app/widget/movie_widget.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(
          child: Text('Top Movies'),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              'List Movie',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: FutureBuilder(
                  future: MovieServices.getMovielist(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator(
                        color: Colors.black,
                      );
                    } else if (snapshot.hasData) {
                      return Column(
                        children: [
                          ...snapshot.data!.map((movieProduct) {
                            var index = snapshot.data!.indexOf(movieProduct);
                            return Container(
                                decoration: BoxDecoration(),
                                margin:
                                    EdgeInsets.only(left: index > 0 ? 10 : 0),
                                child: MovieWidget(movieModel: movieProduct));
                          })
                        ],
                      );
                    } else {
                      return Container();
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }
}
