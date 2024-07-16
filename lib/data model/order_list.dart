import '../utilits/constant/image_list.dart';
import '../utilits/constant/text_list.dart';

class OrderReview{
  final String imagePath;
  final String text;
  OrderReview( {required this.text,required this.imagePath});
}
List<OrderReview> placeOrder=[
  OrderReview(imagePath: RImages.beosound,text:RTexts.b),
  OrderReview(imagePath:  RImages.beosound, text:RTexts.c ),
  OrderReview(imagePath: RImages.heads, text: RTexts.d),
  OrderReview(imagePath: RImages.be, text: RTexts.e),

];