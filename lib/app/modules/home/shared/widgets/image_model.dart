import 'package:flutter/material.dart';

buildImageModel(image) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: Container(
        height: 250,
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
