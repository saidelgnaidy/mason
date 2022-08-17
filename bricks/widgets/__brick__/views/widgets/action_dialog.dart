import 'package:flutter/material.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:get/get.dart';

class ActionDialog extends StatelessWidget {
  final String? title;
  final List<Widget> content;
  final ShapeBorder? shape;
  final String? approveAction;
  final String? cancelAction;
  final void Function()? onApproveClick;
  final void Function()? onCancelClick;

  const ActionDialog({
    Key? key,
    this.title,
    this.content = const <Widget>[],
    this.shape,
    this.approveAction,
    this.cancelAction,
    this.onApproveClick,
    this.onCancelClick,
  }) : super(key: key);

  void show<T>(BuildContext context) => showDialog<T>(
        barrierDismissible: false,
        context: context,
        builder: (_) => this,
      );

  @override
  Widget build(BuildContext context) {
    assert(onCancelClick != null && cancelAction != null);
    assert(onApproveClick != null && approveAction != null);

    return AlertDialog(
      title: title != null ? Text(title!, textAlign: TextAlign.center) : null,
      shape: shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        if (onCancelClick != null)
          SizedBox(
            width: Get.width / 4,
            child: ElevatedButton(
                onPressed: onCancelClick!,
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
                child: Text(
                  cancelAction!,
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 14.0),
                )),
          ),
        if (onApproveClick != null)
          SizedBox(
            width: Get.width / 4,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(KColors.of(context).accentColor)),
              onPressed: onApproveClick!,
              child: Text(
                approveAction!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
            ),
          ),
      ],
      contentPadding: const EdgeInsets.only(top: 10),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: content,
      ),
    );
  }
}
