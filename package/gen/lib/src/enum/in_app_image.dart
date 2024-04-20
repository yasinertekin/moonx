import 'package:flutter/material.dart';
import 'package:gen/src/asset/assets.gen.dart';

/// InAppImage enum
enum InAppImage {
  /// Value: 'image1'
  image1,

  /// Value: 'image2'
  image2,

  /// Value: 'image3'
  image3;

  /// Get value
  Image get value {
    switch (this) {
      case InAppImage.image1:
        return Assets.images.imgInapp1.image(
          package: 'gen',
        );
      case InAppImage.image2:
        return Assets.images.imgInapp2.image(
          package: 'gen',
        );
      case InAppImage.image3:
        return Assets.images.imgInapp3.image(
          package: 'gen',
        );
    }
  }
}
