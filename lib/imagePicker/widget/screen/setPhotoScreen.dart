import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:new_restuarent_app/components/button.dart';
import 'package:new_restuarent_app/components/colors.dart';
import 'package:new_restuarent_app/imagePicker/widget/screen/selectPhotoScreen.dart';

// ignore: must_be_immutable

class SetPhotoScreen extends StatefulWidget {
  const SetPhotoScreen({super.key});

  @override
  State<SetPhotoScreen> createState() => _SetPhotoScreenState();
}

class _SetPhotoScreenState extends State<SetPhotoScreen> {
  File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);

      if (image == null) return;

      File? img = File(image.path);

      // img = await _cropImage(imageFile: img);

      setState(() {
        _image = img;

        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);

      Navigator.of(context).pop();
    }
  }

  // Future<File?> _cropImage({required File imageFile}) async {
  //   return null;

  // CroppedFile? croppedImage =
  //     await ImageCropper().cropImage(sourcePath: imageFile.path);

  // if (croppedImage == null) return null;

  // return File(croppedImage.path);
  // }

  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.28,
        maxChildSize: 0.4,
        minChildSize: 0.28,
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: SelectPhotoOptionsScreen(
              onTap: _pickImage,
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: mainBgColor,
        centerTitle: true,
        title: const Text(
          "PROFILE",
          style: TextStyle(
            color: mainBgColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 30,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [],
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Center(
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      _showSelectPhotoOptions(context);
                    },
                    child: Center(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                        ),
                        child: Center(
                          child: _image == null
                              ? const Icon(
                                  Icons.person,
                                  size: 80,
                                  color: mainBgColor,
                                )
                              : CircleAvatar(
                                  backgroundImage: FileImage(_image!),
                                  radius: 200.0,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.stretch,
              //   children: [
              //     CommonButtons(
              //       onTap: () => _showSelectPhotoOptions(context),
              //       backgroundColor: Colors.black,
              //       textColor: Colors.white,
              //       textLabel: 'Add a Photo',
              //     ),
              //   ],
              // ),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  myProfileListTile(
                    title: "Name :",
                    subtitle: "Armanul Haque Tanvir",
                  ),
                  myProfileListTile(
                    title: "Email :",
                    subtitle: "armanulhaquetanvir66@gmail.com",
                  ),
                  Row(
                    children: [
                      myProfileListTile(
                        title: "Year of Birth :",
                        subtitle: "2002",
                      ),
                      Gap(10),
                      myProfileListTile(
                        title: "Sex :",
                        subtitle: "Male",
                      ),
                    ],
                  ),
                ],
              ),

              const Gap(70),
              MyButton(text: "Edit", onTap: () {}),
              const Gap(10),
              MyButton(text: "Delete Accout", onTap: () {}),
              const Gap(10),
              MyButton(text: "Change Password", onTap: () {}),
              const Gap(10),
              MyButton(text: "Log Out", onTap: () {}),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}

class myProfileListTile extends StatelessWidget {
  final String title, subtitle;
  const myProfileListTile({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 5,
        top: 10,
        bottom: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Gap(10),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
