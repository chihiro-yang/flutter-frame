import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///图片加载控件
Widget cachedNetworkImage(
  String imageUrl, {
  double width = 0.0,
  double height = 0.0,
  BoxFit fit = BoxFit.contain,
  Widget placeholder,
  Widget errorWidget,
}) {
  placeholder ?? CircularProgressIndicator();
  errorWidget ?? Icon(Icons.error);
  return CachedNetworkImage(
    fit: fit,
    width: width,
    height: height,
    imageUrl: imageUrl,
    placeholder: (context, url) => placeholder,
    errorWidget: (context, url, error) => errorWidget,
  );
}
