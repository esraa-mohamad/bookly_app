import 'package:bookly/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookItemImage extends StatelessWidget {
  const CustomBookItemImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(ConstantsSize.s16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            size: ConstantsSize.s30,
            color: Colors.red,
          ),
          placeholder: (context, url) => const Center(
            child: CustomLoadingIndicator(),
          ),
        ),
      ),
    );
  }
}
