/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2019-2023 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/

import 'package:KDDockWidgets/View_mixin.dart';
import 'package:KDDockWidgets/PositionedWidget.dart';
import 'package:KDDockWidgetsBindings/Bindings_KDDWBindingsCore.dart'
    as KDDWBindingsCore;
import 'package:KDDockWidgetsBindings/Bindings_KDDWBindingsFlutter.dart'
    as KDDWBindingsFlutter;

import 'package:flutter/material.dart' hide View;

class Stack extends KDDWBindingsFlutter.Stack with View_mixin {
  Stack(KDDWBindingsCore.Stack? stack, KDDWBindingsCore.View? parent)
      : super(stack, parent: parent) {
    initMixin(this, debugName: "Stack", parent: parent);
  }

  Widget createFlutterWidget() {
    return StackWidget(kddwView, this, widgetKey);
  }
}

class StackWidget extends PositionedWidget {
  final Stack StackView;
  StackWidget(var kddwView, this.StackView, Key key)
      : super(kddwView, key: key);

  @override
  State<PositionedWidget> createState() {
    return StackPositionedWidgetState(kddwView, StackView);
  }
}

class StackPositionedWidgetState extends PositionedWidgetState {
  final Stack StackView;

  StackPositionedWidgetState(var kddwView, this.StackView) : super(kddwView);

  @override
  Widget buildContents(BuildContext ctx) {
    return super.buildContents(ctx);
  }
}
