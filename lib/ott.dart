import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/filck.dart';

class ott extends StatefulWidget {
  const ott({super.key});

  @override
  State<ott> createState() => _ottState();
}

class _ottState extends State<ott> {
  List a=[
    'assets/vin.avif',
    'assets/king.jpg',
    'assets/good.jpeg',
    'assets/Hey.jpg',
    'assets/ayalon.jpeg',

  ];
  List b=[
    'assets/ava.jpeg',
    'assets/unc.jpg',
    'assets/scs.png',
    'assets/jum.jpg',
    'assets/bat.jpg',
  ];
  List c=[
    'assets/dea.jpg',
    'assets/do.jpg',
    'assets/gu.jpg',
    'assets/bad.jpg',
    'assets/fr.jpg',
  ];
  List d=[
    'assets/ins.jpg',
    'assets/open.jpg',
    'assets/obl.jpg',
    'assets/edge.jpg',
    'assets/mar.jpg',
  ];
  int current_n =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
            child: Text('Welcome')),
        actions: [
          Icon(Icons.search)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.3,
              width: MediaQuery.of(context).size.width*1,
              child: CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 300,
                    aspectRatio: 8/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: a.length,
                  itemBuilder: (BuildContext context, int index, int pageViewIndex)
                  {
                    return
                      GestureDetector(
                        // onTap: (){
                        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>filck() ));
                        // },
                        child: Container(
                          height: MediaQuery.of(context).size.height*2,
                          width: MediaQuery.of(context).size.width*2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(a[index]),
                                  fit: BoxFit.fill)),
                        ),
                      );
                  }
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>filck() ));

                },style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10),
                )
                ), child: Row(
                  children: [
                    Icon(Icons.play_arrow),
                    Text('Watch Now'),
                  ],
                ),),
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
                ),
                    child: Icon(Icons.add)),
              ],
            ),
            SizedBox(height: 10,),
            DotsIndicator(
              dotsCount: a.length,
              position: current_n.toInt(),
              decorator: DotsDecorator(
                  color: Colors.grey,
                  activeColor: Colors.purpleAccent
              ),
            ),
            Row(
              children: [
                Text('Latest Releases',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
              ],
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width*1,
                  child: ListView.builder(
                      scrollDirection:Axis.horizontal,
                      itemCount: a.length,
                      itemBuilder: ( context,int index)
                      {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),
                                  )
                              ),
                            ),
                          ],
                        );
                      }
                  ),

                ),
              ],
            ),
            Row(
              children: [
                Text('Action Movies',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
              ],
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width*1,
                  child: ListView.builder(
                      scrollDirection:Axis.horizontal,
                      itemCount: b.length,
                      itemBuilder: ( context,int index)
                      {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(image: AssetImage(b[index]),fit: BoxFit.fill),
                                  )
                              ),
                            ),
                          ],
                        );
                      }
                  ),

                ),
              ],
            ),
            Row(
              children: [
                Text('Comedy carnival',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
              ],
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width*1,
                  child: ListView.builder(
                      scrollDirection:Axis.horizontal,
                      itemCount: c.length,
                      itemBuilder: ( context,int index)
                      {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(image: AssetImage(c[index]),fit: BoxFit.fill),
                                  )
                              ),
                            ),
                          ],
                        );
                      }
                  ),

                ),
              ],
            ),
            Row(
              children: [
                Text('Science&Technology',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
              ],
            ),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height*0.2,
                  width: MediaQuery.of(context).size.width*1,
                  child: ListView.builder(
                      scrollDirection:Axis.horizontal,
                      itemCount: d.length,
                      itemBuilder: ( context,int index)
                      {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(2),
                              child: Container(
                                  height: 130,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(10),
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(image: AssetImage(d[index]),fit: BoxFit.fill),
                                  )
                              ),
                            ),
                          ],
                        );
                      }
                  ),

                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
