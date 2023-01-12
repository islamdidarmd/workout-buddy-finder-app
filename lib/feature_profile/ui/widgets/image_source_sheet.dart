import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceSheet extends StatelessWidget {
  ImageSourceSheet({required this.onImageSelected});

  final void Function(File) onImageSelected;
  final bottomSheetHeight = 200.0;

  final picker = ImagePicker();

  Future<void> _cropImage(BuildContext context, File image) async {
    final croppedImage = await ImageCropper().cropImage(
      sourcePath: image.path,
      aspectRatioPresets: [CropAspectRatioPreset.ratio5x3],
      aspectRatio: CropAspectRatio(ratioX: 3, ratioY: 5),
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: "Crop Image",
          toolbarColor: Theme.of(context).primaryColor,
          toolbarWidgetColor: Colors.white,
        ),
      ],
    );
    if (croppedImage != null) {
      onImageSelected(File(croppedImage.path));
    } else {
      // Image was not cropped. Returning original file.
      onImageSelected(image);
    }
  }

  Future<void> _onTapGallery(BuildContext context) async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      _cropImage(context, File(pickedFile.path));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: bottomSheetHeight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 16),
          ElevatedButton.icon(
            icon: Icon(Icons.photo_library, color: Colors.grey, size: 27),
            label: Text('Gallery', style: TextStyle(fontSize: 16)),
            onPressed: () => _onTapGallery(context),
          ),
        ],
      ),
    );
  }
}
