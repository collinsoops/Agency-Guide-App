import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'imageView.dart';

class SwipePage extends StatefulWidget {
  const SwipePage(
      {required Key key,
      required this.option,
      required this.description,
      required this.strImages,
      required this.thesteps})
      : super(key: key);
  final String option;
  final String description;
  final List strImages;
  final List<String> thesteps;

  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  late String option;
  late String description;
  late List strImages;
  late List<String> thesteps;
  late int globalindex;

  @override
  void initState() {
    super.initState();
    option = widget.option;
    description = widget.description;
    strImages = widget.strImages;
    thesteps = widget.thesteps;
    globalindex = 0;
  }

  final _controller = new PageController();
  static const _kDuration = const Duration(milliseconds: 300);
  static const _kCurve = Curves.ease;
  final GlobalKey _scaffold = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(option),
        actions: <Widget>[
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    "Back",
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                PopupMenuItem(
                  child: Text(
                    "Exit",
                  ),
                  onTap: () {
                    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
                  },
                ),
              ];
            },
          )
        ],
      ),
      body: Stack(children: [
        Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width - 32,
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                  globalindex == 0 ? "" : "Step  " + (globalindex).toString(),
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.black)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height / 4,
              child: PageView.builder(
                controller: _controller,
                itemCount: strImages.length,
                itemBuilder: (BuildContext context, int index) {
                  print(index);
                  return (index == 0)
                      ? ListView(
                          shrinkWrap: true,
                          //physics: NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            Container(
                              height: 30,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[],
                              ),
                            ),
                            Container(
                              height: 100,
                              width: 100,
                              child: Column(
                                children: <Widget>[
                                  Align(
                                    child: Image.asset(
                                      strImages[index],
                                      width: 100,
                                      height: 100,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 20,
                            ),
                            Center(
                                child: Text(option,
                                    style: GoogleFonts.balthazar(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24))),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                            ),
                            Column(
                              children: <Widget>[
                                Text("Description :",
                                    style: GoogleFonts.lato(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Center(
                                    child: Container(
                                        padding:
                                            EdgeInsets.fromLTRB(20, 20, 20, 20),
                                        child: Text(description,
                                            style: GoogleFonts.breeSerif(
                                                fontSize: 15)))),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                            ),
                            Container(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "Swipe Left",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                Align(
                                  child: Image.asset(
                                    "assets/images/swipe.png",
                                    width: 50,
                                    height: 70,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ],
                            ),
                            //Text(steps),
                          ],
                        )
                      : ListView(
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: <Widget>[
                            Column(
                              children: [
                                Center(
                                    child:
                                        /*      Container(
                                        height:300,
                                        width: 170,
                                        child: */ /*PhotoView(
                                          imageProvider: AssetImage(strImages[index],
                                          ),
                                        ),*/ /*)
                    */
                                        GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ImageView(
                                          key: UniqueKey(),
                                          image: strImages[index],
                                          title: option,
                                        ),
                                      ),
                                    );
                                  },
                                  child: Image.asset(strImages[index],
                                      width: 200,
                                      height: 310,
                                      fit: BoxFit.scaleDown),
                                )),
                                Container(
                                  width: MediaQuery.of(context).size.width - 32,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: Center(
                                    child: Text("Description",
                                        style: GoogleFonts.breeSerif(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w800,
                                            color: Colors.black)),
                                  ),
                                ),
                              ],
                            ),

                            Container(
                              height: 5,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 32,
                              margin: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 16.0),
                              padding: EdgeInsets.only(top: 4.0),
                              child: Text(
                                  thesteps[index].isNotEmpty
                                      ? thesteps[index] + "\n"
                                      : "null",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black)),
                            ),
                            //Text(steps),
                          ],
                        );
                },
                onPageChanged: (page) {
                  setState(() {
                    globalindex = page;
                  });
                },

              ),
            ),

/*
              Container(
                margin: EdgeInsets.only(left: 12,right: 12),
                height: 40,
                //color: Colors.green,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      color: Colors.green.shade400,
                      child: TextButton(
                        child: Text(
                          'Previous',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          _controller.previousPage(
                              duration: _kDuration, curve: _kCurve);
                        },
                      ),
                    ),
                    globalindex == strImages.length - 1
                        ? Container(
                      color: Colors.green.shade900,
                          child: TextButton(
                              child: Text(
                                'Home',
                                style: GoogleFonts.acme(
                                    fontSize: 12,color: Colors.white,
                                    fontWeight: FontWeight.bold,),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                        )
                        : Container(
                      color: Colors.green.shade700,
                      child: TextButton(
                              child: const Text(
                                'Next',
                                style: TextStyle(
                                    color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                              onPressed: () {
                                _controller.nextPage(
                                    duration: _kDuration, curve: _kCurve);
                              },
                            ),
                        )
                  ],
                ),
              )
*/
          ],
        ),
        globalindex == strImages.length - 1
            ? Positioned(
                bottom: 2,
                left: MediaQuery.of(context).size.width / 2 - 24,
                child: Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green.shade500,
                    ),
                    child: Text(
                      'Home',
                      style: GoogleFonts.b612Mono(
                        fontSize: 8,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )
            : Positioned(
                bottom: 10,
                child: LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width - 20,
                  lineHeight: 10.0,
                  percent: (globalindex / (strImages.length - 1)).toDouble(),
                  //center: Text(globalindex.toString()),
                  backgroundColor: Colors.green.shade200,
                  progressColor: Colors.green.shade700,
                ),
              ),
      ]),
    );



  }

  void ShowExitDialog() {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              key: _scaffold,
              title: Text("Exit"),
              content: Text("Are you sure to exit?"),
              actions: <Widget>[
                FlatButton(
                    child: Text("Ok"),
                    onPressed: () {
                      SystemChannels.platform
                          .invokeMethod('SystemNavigator.pop');
                    }),
                FlatButton(
                    child: Text("No"), onPressed: () => Navigator.pop(context))
              ],
            ));
  }
}
