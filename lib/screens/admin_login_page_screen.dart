import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:image_picker/image_picker.dart';

class AdminLoginPage extends StatefulWidget {
  const AdminLoginPage({Key? key}) : super(key: key);

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  Uint8List webImage = Uint8List(8);
  bool imagePickeded = false;

  Future<void> pickFile() async {
    if (kIsWeb) {
      final ImagePicker _picker = ImagePicker();
      XFile? image = await _picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        var f = await image.readAsBytes();
        imagePickeded = true;
        setState(() {
          webImage = f;
        });
      } else {
        print("no image hase been picked");
      }
    } else {
      print('somthing went wrong');
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    print('screenSize=' + screenSize.toString());
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
              //For small screen
              child: screenSize <= Size(501, 714.6)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.center,
                          child: GFButton(
                            onPressed: () {
                              pickFile();
                            },
                            text: "Pick Image",
                            icon: Icon(Icons.share),
                            type: GFButtonType.outline2x,
                          ),
                        ),
                        if (imagePickeded == true && kIsWeb)
                          SizedBox(
                              height: 350,
                              width: 450,
                              child: Image.memory(webImage)),
                        //
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter a search term',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Enter your username',
                            ),
                          ),
                        ),
                      ],
                    )
                  :

                  //For Big screen
                  Container(
                      margin: EdgeInsets.all(50),
                      alignment: Alignment.center,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Padding(padding: EdgeInsets.all(50)),
                          Container(
                            margin: EdgeInsets.all(50),
                            alignment: Alignment.center,
                            child: GFButton(
                              onPressed: () {
                                pickFile();
                              },
                              text: "Pick Image",
                              icon: Icon(Icons.share),
                              type: GFButtonType.outline2x,
                            ),
                          ),
                          if (imagePickeded == true && kIsWeb)
                            Container(
                              alignment: Alignment.center,
                              width: double.maxFinite,
                              height: 600,
                              child: SizedBox(
                                height: double.infinity,
                                child: Image.memory(webImage),
                              ),
                            ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Enter a search term',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 16),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                labelText: 'Enter your username',
                              ),
                            ),
                          ),
                        ],
                      ),
                    )

              //

              ),
        ),
      ),
    );
  }
}
