import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';


class picker extends StatefulWidget {
  const picker({Key? key}) : super(key: key);

  @override
  State<picker> createState() => _pickerState();
}

class _pickerState extends State<picker> {
  String? _image;
  File? selectedImage;

  List a=[
    Icon(Icons.account_box),
    Icon(Icons.download),
    Icon(Icons.language),
    Icon(Icons.lock),
    Icon(Icons.help),
  ];
  List b=[
    'Account Setting',
    'Downloads',
    'App Language',
    'Parental Controls',
    'Help&Support',
  ];
  List c=[
    'Subscription Details&Device Manager',
    'Download quality,storage&more',
    'English',
    'Parental Lock',
    'Help centre',
  ];


  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> saveImage(String val) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('path', val);
  }

  Future<void> getImage(ImageSource source) async {
    final imagePath = await ImagePicker().pickImage(source: source);
    if (imagePath != null) {
      saveImage(imagePath.path.toString());
      setState(() {
        selectedImage = File(imagePath.path); // Update selectedImage here
      });
    }
  }

  Future<void> getData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      _image = preferences.getString('path');
      if (_image != null) {
        selectedImage = File(_image!); // Update selectedImage here as well
      }
    });
  }

  void showImagePickerOption(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(18.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/5,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      getImage(ImageSource.gallery);
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "Gallery",
                            style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      getImage(ImageSource.camera);
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                            color: Colors.redAccent,
                          ),
                          Text(
                            "Camera",
                            style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width * 1,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Stack(
                    children: [
                      selectedImage != null
                          ? CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(selectedImage!))
                          : CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/pro.jpg'),
                      ),
                      Positioned(
        
                        child: IconButton(
                          onPressed: () {
                            showImagePickerOption(context);
                          },
                          icon: Icon(
                            Icons.add_a_photo,
                            color: Colors.black87,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Profile",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
                  ),
                ),
                Container  (
                  //color: Colors.black,
                  child: ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index)=>
                          Card(
                            child: Container(
                              color: Colors.black87,
                              child: ListTile(
                                leading: (a[index]),
                                title: Text(b[index],style: TextStyle(color: Colors.white),),
                                subtitle: Text(c[index],style: TextStyle(color: Colors.white),),
                                trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                              ),
                            ),
                          )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: picker(),
  ));
}
