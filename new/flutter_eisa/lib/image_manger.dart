import 'dart:ui';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';

class ImageManager {
  
  Future picker() async {
  final ImagePicker _picker = ImagePicker();
    return _picker;
  }


  final ImagePicker _picker = ImagePicker();
  // Pick an image
  Future pickImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return image;
  }

  // Capture a photo
  Future captureImage() async {
    final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
     return photo;
  }

  // Pick a video
  Future pickVideo() async {
    final XFile? image = await _picker.pickVideo(source: ImageSource.gallery);
     return image;
  }

  // Capture a video
  Future captureVideo() async {
    final XFile? video = await _picker.pickVideo(source: ImageSource.camera); 
    return video;
  }

  // Pick multiple images
  Future pickMultiImage() async {
    final List<XFile>? images = await _picker.pickMultiImage();
     return images;
  }
}
