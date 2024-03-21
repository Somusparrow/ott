
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ott/picker2.dart';

class picker1 extends StatefulWidget {
  const picker1({super.key});

  @override
  State<picker1> createState() => _picker1State();
}

class _picker1State extends State<picker1> {
  Uint8List? _image;

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

Future<void> SelectImage() async {
  Uint8List img = await pickImage(ImageSource.gallery);
  setState(() {
    _image = img;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('image picker'),
      ),
      body:
      SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                _image !=null ?
                    CircleAvatar(
                      radius: 64,
                      backgroundImage: MemoryImage(_image!),
                    )
               :const CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage('assets/pro.jpg'),
                ),
                Positioned(child: IconButton(
                  onPressed: SelectImage,
                  icon: Icon(Icons.add_a_photo,color: Colors.white,),
                )),
                Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                Container(
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
