import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/image_source_sheet.dart';

import '../../../core/model/models.dart';
import '../bloc/profile_bloc.dart';
import '../widgets/profile_avatar.dart';

class ProfilePictureUpdateSection extends StatelessWidget {
  const ProfilePictureUpdateSection({Key? key}) : super(key: key);

  void _onTapPictureEdit(BuildContext context) async {
    final profileBloc = context.read<ProfileBloc>();

    final result = await showModalBottomSheet(
      context: context,
      builder: (context) => BlocProvider<ProfileBloc>.value(
        value: profileBloc,
        child: ImageSourceSheet(
          onImageSelected: (image) =>
              _onImageSelected(context, profileBloc, image),
        ),
      ),
    );
  }

  FutureOr<void> _onImageSelected(
    BuildContext context,
    ProfileBloc bloc,
    File image,
  ) {
    bloc.add(ProfileEvent.uploadProfilePicture(context.read(), image));
  }

  void _onProfileBlocStateChange(BuildContext context, ProfileState state) {
    final result = state.maybeWhen(
      profilePictureUploading: () {
        final result = ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(
            SnackBar(
              content: Text('Uploading Profile Picture...'),
            ),
          );
      },
      profilePictureUploadingError: (error) {
        final state = ScaffoldMessenger.of(context)..clearSnackBars();

        final result = ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(SnackBar(
            content: Text(
              'Uploading Profile Picture...',
            ),
            duration: Duration(days: 365),
          ));
      },
      profilePictureUploadingSuccess: () {
        ScaffoldMessenger.of(context).clearSnackBars();
        Navigator.of(context).pop();
      },
      orElse: () => {},
    );
  }

  @override
  Widget build(BuildContext context) {
    final appUser = context.read<AppUser>();

    return BlocListener<ProfileBloc, ProfileState>(
      listener: _onProfileBlocStateChange,
      child: Stack(
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
      ),
    );
  }
}
