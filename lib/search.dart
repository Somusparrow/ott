import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  List a=[
    'Action',
    'Comedy',
    'Crime',
    'Drama',
    'Romance',
    'Thriller',
    'Horror'
  ];
  List b=[
    'assets/ava.jpeg',
    'assets/unc.jpg',
    'assets/scs.png',
    'assets/jum.jpg',
    'assets/bat.jpg',
    'assets/dea.jpg',
    'assets/do.jpg',
    'assets/gu.jpg',
    'assets/bad.jpg',
    'assets/fr.jpg',
    'assets/ins.jpg',
    'assets/open.jpg',
    'assets/obl.jpg',
    'assets/edge.jpg',
    'assets/mar.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      Column(
        children: [
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration:InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
                hintText: 'Movies, shows and more'
              ) ,
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('People Search For',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.1,
                width: MediaQuery.of(context).size.width*1,
                child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder: ( context,int index)
                    {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3),
                            child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                              backgroundColor:Colors.black,shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            )
                            )
                              , child: Text(a[index],style: TextStyle(color: Colors.white),),),
                          )
                        ],
                      );
                    }
                ),
      
              ),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height*0.58 ,
              width: MediaQuery.of(context).size.width*1,
              child: GridView.builder(
                  itemCount: b.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        Container(
                  
                          height: 160,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(image: AssetImage(b[index]),fit: BoxFit.fill)
                  
                          ),
                  
                        ),
                      ],
                    );
                  
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
