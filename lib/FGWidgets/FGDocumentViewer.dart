import 'package:flutter/material.dart';
import 'package:fragua_custom_widgets/FGWidgets/utils/FGColors.dart';
import 'package:photo_view/photo_view.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class DocumentViewer extends StatelessWidget {
  final String filePath;
  final bool isPDF;
  final double padding;
  final Size size;
  final EdgeInsetsGeometry? margin;

  const DocumentViewer({
    super.key,
    required this.filePath,
    required this.isPDF,
    this.padding = 20.0,
    required this.size,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child:
        Card(
          margin: margin,
          color: fgBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(padding),
            child: Center(
              child: isPDF ? _showPDFViewer() : _buildImageViewer(),
            ),
          ),
        ),
    );
  }

  Widget _buildImageViewer() {
    return PhotoView(
      imageProvider: AssetImage(filePath),
      minScale: PhotoViewComputedScale.contained,
      maxScale: PhotoViewComputedScale.covered * 2.0,
    );
  }

  Widget _showPDFViewer() {
    return Center(
      child: SizedBox(
        width: size.width,
        height: size.height,
        child: SfPdfViewer.asset(filePath)
      ),
    );
  }
}