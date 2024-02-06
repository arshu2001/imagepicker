import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  XFile? filepicker;
  File? image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          ElevatedButton(
            child: Text('click'),
            onPressed: () async {
              ImagePicker Picker = ImagePicker();
              filepicker = await Picker.pickImage(source: ImageSource.gallery);

              setState(() {
                image = File(filepicker!.path);
              });
            },




          ),
          image == null? Text('no image'): Image.file(image!),

        ],
      ),
    );
  }
}
