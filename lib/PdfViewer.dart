
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class MyPdfViewer extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}
class _HomePage extends State<MyPdfViewer> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
       //return Scaffold(
/*
        appBar: AppBar(
          title:  Text(Constants.appName),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.bookmark,
                color: Colors.white,
                semanticLabel: 'Bookmark',
              ),
              onPressed: () {
                _pdfViewerKey.currentState?.openBookmarkView();
              },
            ),
          ],
        ),
*/
        return SfPdfViewer.asset(
          'assets/Agency Guide-Training Material Guide.pdf',
          key: _pdfViewerKey,
        );

  }
}
