import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Center(
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/pro.jpg"),
                      fit: BoxFit.fill,
                    )
                ),
              ),
            ),
            Text('Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
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
            SizedBox(height: 50,),
            ElevatedButton(onPressed: (){}, child: Text('Log out'))
          ],
        ),
      ),
    );
  }
}
