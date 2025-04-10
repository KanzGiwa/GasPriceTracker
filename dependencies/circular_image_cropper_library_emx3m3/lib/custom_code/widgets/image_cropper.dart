// Automatic FlutterFlow imports
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:ui' as ui;
import 'package:crop_your_image/crop_your_image.dart';
//import this dependencies -> crop_your_image: ^1.1.0
import 'package:google_fonts/google_fonts.dart';

class ImageCropper extends StatefulWidget {
  const ImageCropper({
    super.key,
    this.width,
    this.height,
    this.imageFile,
    this.callBackAction,
    this.buttonColor,
    this.buttonTextColor,
    this.buttonText,
    this.loadingText,
  });

  final double? width;
  final double? height;
  final FFUploadedFile? imageFile;
  final Future Function(FFUploadedFile? file)? callBackAction;
  final Color? buttonColor;
  final Color? buttonTextColor;
  final String? buttonText;
  final String? loadingText;

  @override
  State<ImageCropper> createState() => _ImageCropperState();
}

class _ImageCropperState extends State<ImageCropper> {
  bool loading = false;
  final _cropController = CropController();
  Uint8List? croppedImage;

  Future<Uint8List> _cropCircularImage(Uint8List imageBytes) async {
    final data = await decodeImageFromList(imageBytes);
    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    final size = ui.Size(data.width.toDouble(), data.height.toDouble());

    final paint = Paint()..isAntiAlias = true;

    canvas.drawOval(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    canvas.clipPath(
        Path()..addOval(Rect.fromLTWH(0, 0, size.width, size.height)));
    canvas.drawImage(data, Offset.zero, paint);

    final picture = recorder.endRecording();
    final img = await picture.toImage(data.width, data.height);
    final byteData = await img.toByteData(format: ui.ImageByteFormat.png);

    return byteData!.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: widget.width ?? double.infinity,
                child: Center(
                  child: Crop(
                    image: Uint8List.fromList(widget.imageFile!.bytes!),
                    controller: _cropController,
                    onCropped: (image) async {
                      setState(() {
                        loading = true;
                      });
                      await Future.delayed(Duration(milliseconds: 100));
                      Uint8List circularCroppedImage =
                          await _cropCircularImage(image);
                      final croppedFile = FFUploadedFile(
                        name: widget.imageFile!.name,
                        bytes: circularCroppedImage,
                      );
                      widget.callBackAction?.call(croppedFile);
                      setState(() {
                        croppedImage = circularCroppedImage;
                        loading = false;
                      });
                    },
                    aspectRatio: 1 / 1,
                    initialSize: 1,
                    withCircleUi: true,
                    baseColor: const Color.fromARGB(255, 0, 3, 22),
                    maskColor: Colors.blue.withAlpha(100),
                    radius: 20,
                    cornerDotBuilder: (size, edgeAlignment) =>
                        const DotControl(color: Colors.white),
                    interactive: true,
                  ),
                ),
              ),
            ),
            if (croppedImage != null)
              ClipOval(
                child: Image.memory(
                  croppedImage!,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8, 15, 8, 5),
              child: ElevatedButton(
                onPressed: () async {
                  if (!loading) {
                    setState(() {
                      loading = true;
                    });
                    await Future.delayed(Duration(milliseconds: 100));
                    print('Button pressed ...');
                    _cropController.crop();
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    widget.buttonColor ??
                        FlutterFlowTheme.of(context).primaryColor,
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 20.0),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: BorderSide.none,
                    ),
                  ),
                ),
                child: loading
                    ? Text(
                        widget.loadingText ?? 'Cutting image...',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Lexend',
                              color: widget.buttonTextColor ?? Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      )
                    : Text(
                        widget.buttonText ?? 'Crop image',
                        style: FlutterFlowTheme.of(context).subtitle2.override(
                              fontFamily: 'Lexend',
                              color: widget.buttonTextColor ?? Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).subtitle2Family),
                            ),
                      ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 4,
          right: 4,
          child: IconButton(
            icon: const Icon(Icons.close),
            iconSize: 36,
            color: Colors.red,
            onPressed: () => Navigator.pop(context),
          ),
        ),
      ],
    );
  }
}

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
