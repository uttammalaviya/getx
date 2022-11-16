
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class controller extends GetxController
{
  RxInt ans=0.obs;
  TextEditingController t1=TextEditingController();
  TextEditingController t2=TextEditingController();
  void sum(String a,String b)
  {
    ans.value=int.parse(a)+int.parse(b);
  }
}
