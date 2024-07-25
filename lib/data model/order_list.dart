import '../utilits/constant/image_list.dart';
import '../utilits/constant/text_list.dart';

class OrderReviews{
  final String imagePath;
  final String text;
  OrderReviews( {required this.text,required this.imagePath});
}
List<OrderReviews> placeOrder=[
  OrderReviews(imagePath: RImages.beosound,text:RTexts.b),
  OrderReviews(imagePath:  RImages.beosound, text:RTexts.c ),
  OrderReviews(imagePath: RImages.heads, text: RTexts.d),
  OrderReviews(imagePath: RImages.be, text: RTexts.e),

];