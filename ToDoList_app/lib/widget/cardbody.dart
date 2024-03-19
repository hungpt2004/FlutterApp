import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardBody extends StatelessWidget {
  CardBody({super.key, required this.item, required this.handleDelete, required this.index});
  var item;
  final Function handleDelete;
  var index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: (index%2==0)? Colors.blueGrey : Colors.orangeAccent,
      ),
      //Dùng margin để tạo khoảng cách bên dưới của 2 container
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      height: 70,
      //Thêm lớp padding để đẩy chữ cách đều
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                item.name,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: Colors.black,
                )),
             InkWell(
               onTap: () async {
                 if (await confirm(context)) {
                   return handleDelete(item.id);
                 }
                 return;
               },
               child: const Icon(
                Icons.delete_outline_outlined,
                size: 28,
            ),
             ),
          ],
        ),
      ),
    );
  }
}
