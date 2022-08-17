import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:{{name}}/shared/theme/text_theme.dart';

import '../../shared/theme/colors.dart';

class KAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool? needsPop;
  final String? title;
  const KAppBar({Key? key, this.needsPop = false, this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'appBar',
      child: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/Login Logo.svg',
              height: 40,
              width: 40,
            ),
            const SizedBox(width: 10),
            Text(
              'Forall',
              style: TextStyle(fontSize: 20, color: KColors.of(context).accentColor),
            ),
          ],
        ),
        titleTextStyle: KTextStyle.of(context).headers,
        //leading: const ThemeToggleBtn(),
        actions: const [
          // KIconButton(
          //   child: const Icon(KHelper.chats, size: KHelper.iconSize),
          //   onPressed: () {},
          // ),
          // KIconButton(
          //   child: const Icon(KHelper.list, size: KHelper.hScaffoldPadding),
          //   onPressed: () {},
          // ),
          // const LangSwitch(),
        ],
      ),
    );
  }
}
