import 'package:belives_store/screens/pages/user/profile.dart';

import '../utilits/constant/image_list.dart';

class ProductItem {
  final String imagePath;
  ProductItem({required this.imagePath});
}

List<ProductItem> productList = [
  ProductItem(imagePath: RImages.beosound),
  ProductItem(imagePath: RImages.speakers),
  ProductItem(imagePath: RImages.heads),
];
