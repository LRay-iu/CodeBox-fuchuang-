//通过 Overlay 实现 Toast
import 'package:flutter/material.dart';

class Toast {
  static void show({required BuildContext context, required String message}) {
    //1、创建 overlayEntry
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: MediaQuery.of(context).size.height / 2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Card(
              color: Colors.black54,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Text(
                  message,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        );
      },
    );

    //插入到 Overlay中显示 OverlayEntry
    Overlay.of(context).insert(overlayEntry);
    //延时两秒，移除 OverlayEntry
    Future.delayed(const Duration(seconds: 2)).then((value) {
      overlayEntry.remove();
    });
  }
}
