import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_cubit.dart';

class QueryInput extends StatelessWidget {
  final TextEditingController textEditingController;

  const QueryInput({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: ValueKey('Query Input'),
      controller: textEditingController,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onSubmitted: (value) {
        if (value.isNotEmpty) {
          context.read<HomeCubit>().search(value);
        }
      },
      decoration: InputDecoration(
          labelText: 'Enter Query',
          suffixIcon: IconButton(
            onPressed: () {
              context.read<HomeCubit>().search(textEditingController.text);
            },
            icon: Icon(Icons.search),
          ),
          border: OutlineInputBorder()),
    );
  }
}
