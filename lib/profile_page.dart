import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent.shade700,
        title: const Text(
          'Update Your profile',
          style: TextStyle(
            color: Color.fromARGB(255, 242, 242, 242),
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          profilePic(
            context,
          ),
        ],
      ),
    );
  }
}

Widget bottomSheet() {
  return Container(
    height: 100.0,
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    child: const Column(
      children: [
        Text(
          'Choose Profile Picture',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: null,
              child: Row(children: [
                Icon(
                  Icons.camera,
                  size: 30,
                ),
                Text(
                  'Camera',
                  style: TextStyle(fontSize: 18),
                ),
              ]),
            ),
            TextButton(
              onPressed: null,
              child: Row(children: [
                Icon(
                  Icons.photo_library,
                  size: 30,
                ),
                Text(
                  'Gallery',
                  style: TextStyle(fontSize: 18),
                ),
              ]),
            ),
          ],
        )
      ],
    ),
  );
}

Widget profilePic(BuildContext context, {double radius = 80, bool visible = true}) {
  return Center(
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: radius,
            backgroundImage: const AssetImage("assets/images/profile.png"),
          ),
        ),
        Visibility(
          visible: visible,
          child: Positioned(
            bottom: 22,
            right: 35,
            // top: 130,
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context, builder: (builder) => bottomSheet());
              },
              child: const Icon(
                Icons.camera_alt,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        )
      ],
    ),
  );
}
