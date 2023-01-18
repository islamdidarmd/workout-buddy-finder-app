import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/core.dart';
import '../../../feature_auth/data/model/model.dart';

class NameEditView extends HookWidget {
  const NameEditView({
    Key? key,
    required this.appUser,
  }) : super(key: key);
  final AppUser appUser;

  Future<void> _onSubmit(String text) async {
    final _updateQuery = FirebaseFirestore.instance
        .collection(col_users)
        .doc(appUser.userId)
        .withConverter<AppUser>(
          fromFirestore: (snapshot, options) => AppUser.empty(),
          toFirestore: (value, _) => AppUserModel.fromEntity(value).toJson(),
        );

    await _updateQuery.set(appUser.copyWith(
      name: text,
    ));
  }

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController(text: appUser.name);

    return TextField(
      controller: controller,
      onSubmitted: _onSubmit,
      decoration: InputDecoration(
        labelText: 'Display Name',
        border: OutlineInputBorder(),
        suffix: IconButton(
          onPressed: () => _onSubmit(controller.text),
          icon: Icon(FontAwesomeIcons.check),
        ),
      ),
    );
  }
}
