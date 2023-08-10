import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';
import 'package:get/get.dart';
import '../../controller/chat_bot_controller.dart';
import '../global/navigation_bar.dart';

class ChatBotScreen extends GetView<ChatBotController> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('محادثة لطيفة '),
        backgroundColor: Color(0xFF3e2f87),
      ),
      body:GetBuilder<ChatBotController>(
    init: ChatBotController(),
    builder: (controller) => Column(
      children: [
        Expanded(
          child: Obx(
                () => ListView.builder(
              itemCount: controller.messages.length,
              itemBuilder: (context, index) {
                final message = controller.messages[index];

                return Container(
                  alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    decoration: BoxDecoration(
                      color: message.isUser ? Color(0xFF3e2f87) : Color(0xFFF3F0FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      message.text,
                      style:message.isUser ? TextStyle(color: Colors.white):TextStyle(color: Colors.black),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
        Row(
          children: [
            SizedBox(width: 10,),
            Expanded(
              child: TextField(
                controller: controller.textController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF3e2f87),
                      ),
                    ),
                    hintStyle: TextStyle(color: Color(0xFFA9A9A9), fontSize: 15),
                    hintText: 'اكتب ما تريد هنا'),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send,size: 30,),
              onPressed: () async {
                await controller.sendMessage();
              },
            ),
          ],
        ),
      ],
    ),
      ),
      bottomNavigationBar: UserNavigationBar(),
    );
  }
}
