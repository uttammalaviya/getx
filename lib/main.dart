import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'first.dart';

void main()
{
  runApp(MaterialApp(home: first(),));
}

class first extends StatelessWidget {
  const first({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller c=Get.put(controller());
    return Scaffold(
      appBar: AppBar(title: Text("Getx"),),
      body: Column(
        children: [
          TextField(controller: c.t1,),
          TextField(controller: c.t2,),
          ElevatedButton(onPressed: () {
            String a=c.t1.text;
            String b=c.t2.text;
            c.sum(a, b);
          }, child: Text("Sum")),
          Obx(() => Text("${c.ans}")),
        ],
      ),
    );
  }
}
