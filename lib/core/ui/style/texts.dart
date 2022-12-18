import 'dart:ui';

import 'package:flutter/material.dart';

Text mediumBoldTitle(context, String text) => Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.bold),
    );
