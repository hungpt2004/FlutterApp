import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModalBottom extends StatelessWidget {
  ModalBottom({super.key});

  //TextEditingController giup nhan du lieu nguoi dung nhap vao
  TextEditingController controller = TextEditingController();
  void handleOnClick(BuildContext context){
    final text = controller.text;
    if(text.isEmpty){
      return;
    }
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      //giải quyết vấn đề container bị mất khi mở bàn phím

      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        //Đẩy bên trong thì dùng padding
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // width: 100,
        // height: 200,
        // color: Colors.orangeAccent,
        child: Column(
          children: [
            TextField(
              controller: controller,
              cursorColor: Colors.black,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Number split",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child:
              ElevatedButton(
                  onPressed: () => handleOnClick(context),
                  child: const Text("Input Number Of People")),
            ),
          ],
        ),
      ),
    );
  }
}