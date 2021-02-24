import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';

class PdfPreview extends StatefulWidget {
  @override
  _PdfPreviewState createState() => _PdfPreviewState();
}

class _PdfPreviewState extends State<PdfPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pdf Preview'),
      ),
      body: PDF(
        defaultPage: 1,
        // enableSwipe: false,
        autoSpacing: false,
        onError: (error) {
          print(error);
        },
        onPageChanged: (page, total) {
          if (page == total - 1) {
            print('last page');
          }
        },
      ).fromAsset('assets/KelasMobileMalang.pdf'),
    );
  }
}
