import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:extended_image/extended_image.dart';
import 'package:widgetbank/dc_helpers.dart';

class DCImage extends StatelessWidget {
  const DCImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Working with Images'),
      ),
      body: Center(
        child: ListView(children: [
          Column(
            children: <Widget>[
              const SizedBox(height: 10),
              const Text(
                'Image from asset in project',
                style: CustomtextStyle.textStyle,
              ),
              const Card(
                  child: Image(image: AssetImage('assets/images/space.jpg'))),
              const SizedBox(height: 10),
              const Text(
                'Image from Network',
                style: CustomtextStyle.textStyle,
              ),
              Card(
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2023/04/11/18/31/duck-7917949_960_720.jpg'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Image from Network with fade in effect',
                style: CustomtextStyle.textStyle,
              ),
              Card(
                child: Stack(children: [
                  FadeInImage.memoryNetwork(
                    placeholder: kTransparentImage,
                    image:
                        'https://cdn.pixabay.com/photo/2023/04/11/18/31/duck-7917949_960_720.jpg',
                  ),
                ]),
              ),
              const SizedBox(height: 10),
              const Text(
                'Cached Image from Network',
                style: CustomtextStyle.textStyle,
              ),
              Card(
                child: CachedNetworkImage(
                  imageUrl: "https://picsum.photos/250?image=19",
                  placeholder: (context, url) =>
                      const Center(child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Extended Image Package',
                style: CustomtextStyle.textStyle,
              ),
              ExtendedImage.network(
                'https://picsum.photos/250?image=19',
                fit: BoxFit.fill,
                cache: true,
                border: Border.all(color: Colors.red, width: 1.0),
                shape: BoxShape.circle,
                // borderRadius: BorderRadius.all(Radius.circular(30.0)),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ]),
      ),
    );
  }
}
