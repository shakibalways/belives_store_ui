

import 'package:belives_store/utilits/constant/text_list.dart';

import '../utilits/constant/image_list.dart';

class ProductItem {
  final String imagePath;
  final String text;
  final String texts;
  ProductItem( {required this.text,required this.texts, required this.imagePath});
}

List<ProductItem> productList = [
  ProductItem(imagePath: RImages.beosound, text: RTexts.speaker, texts:RTexts.avail),
  ProductItem(imagePath: RImages.head, text: RTexts.headPhone, texts: RTexts.list),

];
