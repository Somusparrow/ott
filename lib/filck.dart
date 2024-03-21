import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class filck extends StatefulWidget {
  filck({Key? key}) : super(key: key);

  @override
  _filckState createState() => _filckState();
}

class _filckState extends State<filck> {
  late FlickManager flickManager;
  List a=[
    'assets/ava.jpeg',
    'assets/unc.jpg',
    'assets/scs.png',
    'assets/jum.jpg',
    'assets/bat.jpg',
  ];
  List b=[
    'assets/dea.jpg',
    'assets/do.jpg',
    'assets/gu.jpg',
    'assets/bad.jpg',
    'assets/fr.jpg',
  ];

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      ),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
        Container(
          height: 250,
          child: FlickVideoPlayer(
          flickManager: flickManager,
          ),
        ),
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pix.png'),
                  fit: BoxFit.fill,
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('2021 .',style: TextStyle(fontSize:15,color: Colors.white),),
                Text('1h 35m .',style: TextStyle(fontSize: 15,color: Colors.white),),
                Text('4 Languages',style: TextStyle(fontSize: 15,color: Colors.white),),
                ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                )
                ), child: Text('U/A 7+')),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: 350,
              child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow),
                        Text('Watch Now'),
                      ],
                    ),
                  )),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('Animation |',style: TextStyle(fontSize: 20,color: Colors.white),),
                Text(' Kids |',style: TextStyle(fontSize: 20,color: Colors.white),),
                Text(' Adventure |',style: TextStyle(fontSize: 20,color: Colors.white),),
                Text(' Fantasy |',style: TextStyle(fontSize: 20,color: Colors.white),),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('The movie is a coming age story about one young boy',style: TextStyle(color: Colors.white),),
              ],
            ),
            Row(
              children: [
                Text('experiencing unforgettable summer filled with gelato,',style: TextStyle(color: Colors.white),),
              ],
            ),
            Row(
              children: [
                Text('pasta and endless scooter rides',style: TextStyle(color: Colors.white),),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Icon(Icons.add,color: Colors.white,),
                      Text('Watchlist',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Icon(Icons.share,color: Colors.white,),
                      Text('Share',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Icon(Icons.download,color: Colors.white,),
                      Text('Download',style: TextStyle(color: Colors.white),),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text('More Like This',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
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
                Text('More Like This',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
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

          ],
        ),
      ),
    );
  }
}
