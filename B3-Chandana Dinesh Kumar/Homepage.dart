import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatelessWidget {
  final List<String> imageUrls = [
    'https://picsum.photos/200/300?image=1',
    'https://picsum.photos/200/300?image=2',
    'https://picsum.photos/200/300?image=3',
    'https://picsum.photos/200/300?image=4',
    'https://picsum.photos/200/300?image=5',
    'https://picsum.photos/200/300?image=6',
    'https://picsum.photos/200/300?image=7',
    'https://picsum.photos/200/300?image=8',
    'https://picsum.photos/200/300?image=9',
    'https://picsum.photos/200/300?image=10',
    'https://picsum.photos/200/300?image=11',
    'https://picsum.photos/200/300?image=12',
    'https://picsum.photos/200/300?image=13',
    'https://picsum.photos/200/300?image=14',
    'https://picsum.photos/200/300?image=15',
    'https://picsum.photos/200/300?image=16',
    'https://picsum.photos/200/300?image=17',
    'https://picsum.photos/200/300?image=18',
    'https://picsum.photos/200/300?image=19',
    'https://picsum.photos/200/300?image=20',
    'https://picsum.photos/200/300?image=21',
    'https://picsum.photos/200/300?image=22',
    'https://picsum.photos/200/300?image=23',
    'https://picsum.photos/200/300?image=24',
    'https://picsum.photos/200/300?image=25',
    'https://picsum.photos/200/300?image=26',
    'https://picsum.photos/200/300?image=27',
    'https://picsum.photos/200/300?image=28',
    'https://picsum.photos/200/300?image=29',
    'https://picsum.photos/200/300?image=30',
    'https://picsum.photos/200/300?image=31',
    'https://picsum.photos/200/300?image=32',
    'https://picsum.photos/200/300?image=33',
    'https://picsum.photos/200/300?image=34',
    'https://picsum.photos/200/300?image=35',
    'https://picsum.photos/200/300?image=36',
    'https://picsum.photos/200/300?image=37',
    'https://picsum.photos/200/300?image=38',
    'https://picsum.photos/200/300?image=39',
    'https://picsum.photos/200/300?image=40',
    'https://picsum.photos/200/300?image=41',
    'https://picsum.photos/200/300?image=42',
    'https://picsum.photos/200/300?image=43',
    'https://picsum.photos/200/300?image=44',
    'https://picsum.photos/200/300?image=45',
    'https://picsum.photos/200/300?image=46',
    'https://picsum.photos/200/300?image=47',
    'https://picsum.photos/200/300?image=48',
    'https://picsum.photos/200/300?image=49',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Grid'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return CachedNetworkImage(
            imageUrl: imageUrls[index],
            fit: BoxFit.cover,
            placeholder: (context, url) => Center(child: CircularProgressIndicator()), 
            errorWidget: (context, url, error) => Icon(Icons.error), 
          );
        },
      ),
    );
  }
}
