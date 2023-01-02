import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageSourceSheet extends StatelessWidget {
  ImageSourceSheet({required this.onImageSelected});

  final Function(File) onImageSelected;

  final picker = ImagePicker();

  Future<void> selectedImage(BuildContext context, File image) async {
    final CroppedFile? croppedImage = await ImageCropper().cropImage(
        sourcePath: image.path,
        aspectRatioPresets: [CropAspectRatioPreset.square],
        maxWidth: 400,
        maxHeight: 400,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: "Crop Image",
            toolbarColor: Theme.of(context).primaryColor,
            toolbarWidgetColor: Colors.white,
          )
        ]);
    onImageSelected(File(croppedImage?.path ?? ''));
  }

  Future<void> _onTapGallery(BuildContext context) async {
    final XFile? pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
    );
    selectedImage(context, File(pickedFile?.path ?? ''));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
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
