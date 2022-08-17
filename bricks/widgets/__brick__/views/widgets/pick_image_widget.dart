import 'dart:developer';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/di.dart';
import 'package:{{name}}/logic/pick_image/pick_image_cubit.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:get/get.dart';

class PickImageWidget extends StatefulWidget {
  final String? initialImg;
  const PickImageWidget({Key? key, required this.onSelect, this.initialImg}) : super(key: key);

  final Function(File? file) onSelect;

  @override
  State<PickImageWidget> createState() => _PickImageWidgetState();
}

class _PickImageWidgetState extends State<PickImageWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Di.pickImageCubit,
      child: BlocBuilder<PickImageCubit, PickImageState>(
        builder: (context, state) {
          log('PickImageWidget state: $state');
          final cubit = context.read<PickImageCubit>();
          if (state is PickImageInitial) {
            return InkWell(
              onTap: () async {
                File? file = await cubit.pickImage(context);

                widget.onSelect(file);
              },
              child: Container(
                height: Get.width * .3,
                width: Get.width * .3,
                decoration: BoxDecoration(
                  border: Border.all(color: KColors.of(context).activeIcons),
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    if (widget.initialImg != null)
                      CircleAvatar(
                        radius: Get.width * .3,
                        backgroundImage: CachedNetworkImageProvider(widget.initialImg!),
                      ),
                    const Positioned(
                      bottom: -10,
                      child: Icon(
                        Icons.add_a_photo,
                      ),
                    )
                  ],
                ),
              ),
            );
          }
          if (state is PickImageSuccess) {
            return Row(
              children: [
                if (cubit.image != null)
                  CircleAvatar(
                    backgroundImage: FileImage(cubit.image!),
                    radius: Get.height * .07,
                  ),
              ],
            );
          }
          if (state is PickImageLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is PickImageError) {
            return Center(
              child: Text(state.error),
            );
          }

          return Container();
        },
      ),
    );
  }
}
