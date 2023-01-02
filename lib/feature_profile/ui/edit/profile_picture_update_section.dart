import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_buddy_finder/feature_profile/ui/widgets/image_source_sheet.dart';

import '../../../core/model/models.dart';
import '../widgets/profile_avatar.dart';

class ProfilePictureUpdateSection extends StatelessWidget {
  const ProfilePictureUpdateSection({Key? key}) : super(key: key);

  void _onTapPictureEdit(BuildContext context) async {
    final result = await showModalBottomSheet(
      context: context,
      builder: (context) => ImageSourceSheet(
        onImageSelected: (image) {
          debugPrint(image.path);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return Stack(
      children: [
        ProfileAvatar(user: appUser, size: 100),
        Positioned(
          bottom: 8,
          right: 0,
          child: InkWell(
            onTap: () => _onTapPictureEdit(context),
            child: Container(
              height: 32,
              width: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                FontAwesomeIcons.pen,
                color: Colors.black,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
