
import 'package:belives_store/screens/pages/home%20page/search_page.dart';
import 'package:belives_store/screens/pages/home%20page/search_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const BelivesStore());

}
class BelivesStore extends StatelessWidget {
  const BelivesStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchResult(
      ),
    );
  }
}
