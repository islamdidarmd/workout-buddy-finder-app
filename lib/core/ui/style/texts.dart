// This is a helper file for creating different text styles.
// ignore_for_file: avoid-returning-widgets

import 'package:flutter/material.dart';

Text mediumBody(context, String text) => Text(
      text,
      style: Theme.of(context)
          .textTheme
          .bodyMedium
          ?.copyWith(fontWeight: FontWeight.bold),
    );

Text mediumBoldTitle(context, String text) => Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.bold),
    );
Text largeBoldTitle(context, String text) => Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleLarge
          ?.copyWith(fontWeight: FontWeight.bold),
    );
