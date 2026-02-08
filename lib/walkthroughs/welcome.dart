import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/walkthrough_widget.dart';

// Focus widget keys for this walkthrough
final containerKurtigw2 = GlobalKey();
final container11bey2rb = GlobalKey();

/// welcome
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: containerKurtigw2,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughWidget(
              exxplanation: 'click  to place CHT demand ',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: container11bey2rb,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.RRect,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => WalkthroughWidget(
              exxplanation: 'click for charter booking ',
            ),
          ),
        ],
      ),
    ];
