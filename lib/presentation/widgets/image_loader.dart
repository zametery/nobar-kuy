import 'package:dicoding_expert/utils/image_url.dart';
import 'package:flutter/material.dart';

class ImageLoader extends StatelessWidget {
  final String imagePath;
  const ImageLoader({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      ImageUrl.getImage(imagePath),
      height: 150,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, loading) {
        if (loading == null) return child;

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
