import 'package:flutter/material.dart';

import '../themes/constants/spacing.dart';

class BoxSpacer extends SizedBox {
  const BoxSpacer({super.key}) : super.square(dimension: ConstSpacing.medium);

  const BoxSpacer.xxSmall({super.key})
      : super.square(dimension: ConstSpacing.xxSmall);

  const BoxSpacer.xSmall({super.key})
      : super.square(dimension: ConstSpacing.xSmall);

  const BoxSpacer.small({super.key})
      : super.square(dimension: ConstSpacing.small);

  const BoxSpacer.large({super.key})
      : super.square(dimension: ConstSpacing.large);

  const BoxSpacer.xLarge({super.key})
      : super.square(dimension: ConstSpacing.xLarge);
}
