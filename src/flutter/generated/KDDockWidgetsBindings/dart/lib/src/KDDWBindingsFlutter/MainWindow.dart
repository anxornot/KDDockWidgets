/*
  This file is part of KDDockWidgets.

  SPDX-FileCopyrightText: 2019-2023 Klarälvdalens Datakonsult AB, a KDAB Group company <info@kdab.com>
  Author: Sérgio Martins <sergio.martins@kdab.com>

  SPDX-License-Identifier: GPL-2.0-only OR GPL-3.0-only

  Contact KDAB at <info@kdab.com> for commercial licensing options.
*/
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import '../TypeHelpers.dart';
import '../../Bindings.dart';
import '../../Bindings_KDDWBindingsCore.dart' as KDDWBindingsCore;
import '../../Bindings_KDDWBindingsFlutter.dart' as KDDWBindingsFlutter;
import '../../LibraryLoader.dart';
import '../../FinalizerHelpers.dart';

var _dylib = Library.instance().dylib;

class MainWindow extends KDDWBindingsFlutter.View {
  MainWindow.fromCppPointer(var cppPointer, [var needsAutoDelete = false])
      : super.fromCppPointer(cppPointer, needsAutoDelete) {}
  MainWindow.init() : super.init() {}
  factory MainWindow.fromCache(var cppPointer, [needsAutoDelete = false]) {
    if (KDDWBindingsCore.View.isCached(cppPointer)) {
      var instance =
          KDDWBindingsCore.View.s_dartInstanceByCppPtr[cppPointer.address];
      if (instance != null) return instance as MainWindow;
    }
    return MainWindow.fromCppPointer(cppPointer, needsAutoDelete);
  } //MainWindow(const QString & uniqueName, QFlags<KDDockWidgets::MainWindowOption> options, KDDockWidgets::flutter::View * parent, Qt::WindowFlags flags)
  MainWindow(String? uniqueName,
      {int options = 0,
      required KDDWBindingsFlutter.View? parent,
      int flags = 0})
      : super.init() {
    final voidstar_Func_voidstar_int_voidstar_int func = _dylib
        .lookup<
                ffi.NativeFunction<
                    voidstar_Func_voidstar_ffi_Int32_voidstar_ffi_Int32_FFI>>(
            'c_KDDockWidgets__flutter__MainWindow__constructor_QString_MainWindowOptions_View_WindowFlags')
        .asFunction();
    thisCpp = func(uniqueName?.toNativeUtf8() ?? ffi.nullptr, options,
        parent == null ? ffi.nullptr : parent.thisCpp, flags);
    KDDWBindingsCore.View.s_dartInstanceByCppPtr[thisCpp.address] = this;
    registerCallbacks();
  }
  static void activateWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::activateWindow()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.activateWindow();
  } // centralAreaGeometry() const

  QRect centralAreaGeometry() {
    final voidstar_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<voidstar_Func_voidstar_FFI>>(
            cFunctionSymbolName(1053))
        .asFunction();
    ffi.Pointer<void> result = func(thisCpp);
    return QRect.fromCppPointer(result, true);
  }

  static ffi.Pointer<void> centralAreaGeometry_calledFromC(
      ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::centralAreaGeometry() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.centralAreaGeometry();
    return result.thisCpp;
  }

  static int close_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::close()! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.close();
    return result ? 1 : 0;
  }

  static void createPlatformWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::createPlatformWindow()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.createPlatformWindow();
  }

  static int flags_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::flags() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.flags();
    return result;
  }

  static ffi.Pointer<void> geometry_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::geometry() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.geometry();
    return result.thisCpp;
  }

  static void grabMouse_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::grabMouse()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.grabMouse();
  }

  static int hasFocus_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::hasFocus() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.hasFocus();
    return result ? 1 : 0;
  }

  static void hide_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::hide()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.hide();
  }

  static void init_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::init()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.init();
  }

  static int isActiveWindow_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isActiveWindow() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isActiveWindow();
    return result ? 1 : 0;
  }

  static int isExplicitlyHidden_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isExplicitlyHidden() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isExplicitlyHidden();
    return result ? 1 : 0;
  }

  static int isMaximized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isMaximized() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isMaximized();
    return result ? 1 : 0;
  }

  static int isMinimized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isMinimized() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isMinimized();
    return result ? 1 : 0;
  }

  static int isMounted_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isMounted() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isMounted();
    return result ? 1 : 0;
  }

  static int isNull_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isNull() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isNull();
    return result ? 1 : 0;
  }

  static int isRootView_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isRootView() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isRootView();
    return result ? 1 : 0;
  }

  static int isVisible_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::isVisible() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.isVisible();
    return result ? 1 : 0;
  }

  static ffi.Pointer<void> mapFromGlobal_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> globalPt) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::mapFromGlobal(QPoint globalPt) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapFromGlobal(QPoint.fromCppPointer(globalPt));
    return result.thisCpp;
  }

  static ffi.Pointer<void> mapTo_calledFromC(ffi.Pointer<void> thisCpp,
      ffi.Pointer<void>? parent, ffi.Pointer<void> pos) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::mapTo(KDDockWidgets::Core::View * parent, QPoint pos) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapTo(
        (parent == null || parent.address == 0)
            ? null
            : KDDWBindingsCore.View.fromCppPointer(parent),
        QPoint.fromCppPointer(pos));
    return result.thisCpp;
  }

  static ffi.Pointer<void> mapToGlobal_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> localPt) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::mapToGlobal(QPoint localPt) const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.mapToGlobal(QPoint.fromCppPointer(localPt));
    return result.thisCpp;
  }

  static ffi.Pointer<void> maxSizeHint_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::maxSizeHint() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.maxSizeHint();
    return result.thisCpp;
  }

  static ffi.Pointer<void> minSize_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::minSize() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.minSize();
    return result.thisCpp;
  }

  static void move_calledFromC(ffi.Pointer<void> thisCpp, int x, int y) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::move(int x, int y)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.move(x, y);
  }

  static ffi.Pointer<void> normalGeometry_calledFromC(
      ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::normalGeometry() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.normalGeometry();
    return result.thisCpp;
  }

  static void onChildAdded_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? childView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onChildAdded(KDDockWidgets::Core::View * childView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onChildAdded((childView == null || childView.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(childView));
  }

  static void onChildRemoved_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? childView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onChildRemoved(KDDockWidgets::Core::View * childView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onChildRemoved((childView == null || childView.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(childView));
  }

  static void onChildVisibilityChanged_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? childView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onChildVisibilityChanged(KDDockWidgets::Core::View * childView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onChildVisibilityChanged(
        (childView == null || childView.address == 0)
            ? null
            : KDDWBindingsCore.View.fromCppPointer(childView));
  }

  static void onGeometryChanged_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onGeometryChanged()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onGeometryChanged();
  }

  static void onRebuildRequested_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onRebuildRequested()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.onRebuildRequested();
  }

  static int onResize_2_calledFromC(ffi.Pointer<void> thisCpp, int h, int w) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::onResize(int h, int w)! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.onResize_2(h, w);
    return result ? 1 : 0;
  }

  static void raise_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::raise()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raise();
  }

  static void raiseAndActivate_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::raiseAndActivate()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raiseAndActivate();
  }

  static void raiseChild_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? childView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::raiseChild(KDDockWidgets::Core::View * childView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raiseChild((childView == null || childView.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(childView));
  }

  static void raiseWindow_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? rootView) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::raiseWindow(KDDockWidgets::Core::View * rootView)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.raiseWindow((rootView == null || rootView.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(rootView));
  }

  static void releaseKeyboard_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::releaseKeyboard()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.releaseKeyboard();
  }

  static void releaseMouse_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::releaseMouse()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.releaseMouse();
  } // setContentsMargins(int left, int top, int right, int bottom)

  setContentsMargins(int left, int top, int right, int bottom) {
    final void_Func_voidstar_int_int_int_int func = _dylib
        .lookup<
                ffi.NativeFunction<
                    void_Func_voidstar_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI>>(
            cFunctionSymbolName(1056))
        .asFunction();
    func(thisCpp, left, top, right, bottom);
  }

  static void setContentsMargins_calledFromC(
      ffi.Pointer<void> thisCpp, int left, int top, int right, int bottom) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setContentsMargins(int left, int top, int right, int bottom)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setContentsMargins(left, top, right, bottom);
  }

  static void setCursor_calledFromC(ffi.Pointer<void> thisCpp, int shape) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setCursor(Qt::CursorShape shape)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setCursor(shape);
  }

  static void setFixedHeight_calledFromC(ffi.Pointer<void> thisCpp, int h) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setFixedHeight(int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setFixedHeight(h);
  }

  static void setFixedWidth_calledFromC(ffi.Pointer<void> thisCpp, int w) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setFixedWidth(int w)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setFixedWidth(w);
  }

  static void setGeometry_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> geometry) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setGeometry(QRect geometry)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setGeometry(QRect.fromCppPointer(geometry));
  }

  static void setHeight_calledFromC(ffi.Pointer<void> thisCpp, int h) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setHeight(int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setHeight(h);
  }

  static void setMaximumSize_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> sz) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setMaximumSize(QSize sz)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMaximumSize(QSize.fromCppPointer(sz));
  }

  static void setMinimumSize_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void> sz) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setMinimumSize(QSize sz)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMinimumSize(QSize.fromCppPointer(sz));
  }

  static void setMouseTracking_calledFromC(
      ffi.Pointer<void> thisCpp, int enable) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setMouseTracking(bool enable)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setMouseTracking(enable != 0);
  }

  static void setParent_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? parent) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setParent(KDDockWidgets::Core::View * parent)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setParent((parent == null || parent.address == 0)
        ? null
        : KDDWBindingsCore.View.fromCppPointer(parent));
  }

  static void setSize_calledFromC(ffi.Pointer<void> thisCpp, int w, int h) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setSize(int w, int h)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setSize(w, h);
  }

  static void setViewName_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? name) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setViewName(const QString & name)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setViewName(QString.fromCppPointer(name).toDartString());
  }

  static void setVisible_calledFromC(ffi.Pointer<void> thisCpp, int visible) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setVisible(bool visible)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setVisible(visible != 0);
  }

  static void setWidth_calledFromC(ffi.Pointer<void> thisCpp, int w) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setWidth(int w)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWidth(w);
  }

  static void setWindowOpacity_calledFromC(
      ffi.Pointer<void> thisCpp, double v) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setWindowOpacity(double v)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWindowOpacity(v);
  }

  static void setWindowTitle_calledFromC(
      ffi.Pointer<void> thisCpp, ffi.Pointer<void>? title) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setWindowTitle(const QString & title)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setWindowTitle(QString.fromCppPointer(title).toDartString());
  }

  static void setZOrder_calledFromC(ffi.Pointer<void> thisCpp, int z) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::setZOrder(int z)! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.setZOrder(z);
  }

  static void show_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::show()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.show();
  }

  static void showMaximized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::showMaximized()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showMaximized();
  }

  static void showMinimized_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::showMinimized()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showMinimized();
  }

  static void showNormal_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::showNormal()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.showNormal();
  }

  static void update_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::update()! (${thisCpp.address})");
      throw Error();
    }
    dartInstance.update();
  }

  static ffi.Pointer<void> viewName_calledFromC(ffi.Pointer<void> thisCpp) {
    var dartInstance = KDDWBindingsCore
        .View.s_dartInstanceByCppPtr[thisCpp.address] as MainWindow;
    if (dartInstance == null) {
      print(
          "Dart instance not found for MainWindow::viewName() const! (${thisCpp.address})");
      throw Error();
    }
    final result = dartInstance.viewName();
    return result.thisCpp;
  }

  void release() {
    final void_Func_voidstar func = _dylib
        .lookup<ffi.NativeFunction<void_Func_voidstar_FFI>>(
            'c_KDDockWidgets__flutter__MainWindow__destructor')
        .asFunction();
    func(thisCpp);
  }

  String cFunctionSymbolName(int methodId) {
    switch (methodId) {
      case 921:
        return "c_KDDockWidgets__flutter__MainWindow__activateWindow";
      case 1053:
        return "c_KDDockWidgets__flutter__MainWindow__centralAreaGeometry";
      case 931:
        return "c_KDDockWidgets__flutter__MainWindow__close";
      case 933:
        return "c_KDDockWidgets__flutter__MainWindow__createPlatformWindow";
      case 938:
        return "c_KDDockWidgets__flutter__MainWindow__flags";
      case 939:
        return "c_KDDockWidgets__flutter__MainWindow__geometry";
      case 940:
        return "c_KDDockWidgets__flutter__MainWindow__grabMouse";
      case 943:
        return "c_KDDockWidgets__flutter__MainWindow__hasFocus";
      case 944:
        return "c_KDDockWidgets__flutter__MainWindow__hide";
      case 946:
        return "c_KDDockWidgets__flutter__MainWindow__init";
      case 948:
        return "c_KDDockWidgets__flutter__MainWindow__isActiveWindow";
      case 949:
        return "c_KDDockWidgets__flutter__MainWindow__isExplicitlyHidden";
      case 950:
        return "c_KDDockWidgets__flutter__MainWindow__isMaximized";
      case 951:
        return "c_KDDockWidgets__flutter__MainWindow__isMinimized";
      case 1009:
        return "c_KDDockWidgets__flutter__MainWindow__isMounted";
      case 952:
        return "c_KDDockWidgets__flutter__MainWindow__isNull";
      case 953:
        return "c_KDDockWidgets__flutter__MainWindow__isRootView";
      case 954:
        return "c_KDDockWidgets__flutter__MainWindow__isVisible";
      case 955:
        return "c_KDDockWidgets__flutter__MainWindow__mapFromGlobal_QPoint";
      case 956:
        return "c_KDDockWidgets__flutter__MainWindow__mapTo_View_QPoint";
      case 957:
        return "c_KDDockWidgets__flutter__MainWindow__mapToGlobal_QPoint";
      case 958:
        return "c_KDDockWidgets__flutter__MainWindow__maxSizeHint";
      case 959:
        return "c_KDDockWidgets__flutter__MainWindow__minSize";
      case 960:
        return "c_KDDockWidgets__flutter__MainWindow__move_int_int";
      case 961:
        return "c_KDDockWidgets__flutter__MainWindow__normalGeometry";
      case 1010:
        return "c_KDDockWidgets__flutter__MainWindow__onChildAdded_View";
      case 1011:
        return "c_KDDockWidgets__flutter__MainWindow__onChildRemoved_View";
      case 1012:
        return "c_KDDockWidgets__flutter__MainWindow__onChildVisibilityChanged_View";
      case 1014:
        return "c_KDDockWidgets__flutter__MainWindow__onGeometryChanged";
      case 1016:
        return "c_KDDockWidgets__flutter__MainWindow__onRebuildRequested";
      case 963:
        return "c_KDDockWidgets__flutter__MainWindow__onResize_int_int";
      case 964:
        return "c_KDDockWidgets__flutter__MainWindow__raise";
      case 965:
        return "c_KDDockWidgets__flutter__MainWindow__raiseAndActivate";
      case 1018:
        return "c_KDDockWidgets__flutter__MainWindow__raiseChild_View";
      case 1019:
        return "c_KDDockWidgets__flutter__MainWindow__raiseWindow_View";
      case 966:
        return "c_KDDockWidgets__flutter__MainWindow__releaseKeyboard";
      case 967:
        return "c_KDDockWidgets__flutter__MainWindow__releaseMouse";
      case 1056:
        return "c_KDDockWidgets__flutter__MainWindow__setContentsMargins_int_int_int_int";
      case 970:
        return "c_KDDockWidgets__flutter__MainWindow__setCursor_CursorShape";
      case 971:
        return "c_KDDockWidgets__flutter__MainWindow__setFixedHeight_int";
      case 972:
        return "c_KDDockWidgets__flutter__MainWindow__setFixedWidth_int";
      case 973:
        return "c_KDDockWidgets__flutter__MainWindow__setGeometry_QRect";
      case 974:
        return "c_KDDockWidgets__flutter__MainWindow__setHeight_int";
      case 975:
        return "c_KDDockWidgets__flutter__MainWindow__setMaximumSize_QSize";
      case 976:
        return "c_KDDockWidgets__flutter__MainWindow__setMinimumSize_QSize";
      case 977:
        return "c_KDDockWidgets__flutter__MainWindow__setMouseTracking_bool";
      case 978:
        return "c_KDDockWidgets__flutter__MainWindow__setParent_View";
      case 979:
        return "c_KDDockWidgets__flutter__MainWindow__setSize_int_int";
      case 980:
        return "c_KDDockWidgets__flutter__MainWindow__setViewName_QString";
      case 981:
        return "c_KDDockWidgets__flutter__MainWindow__setVisible_bool";
      case 982:
        return "c_KDDockWidgets__flutter__MainWindow__setWidth_int";
      case 983:
        return "c_KDDockWidgets__flutter__MainWindow__setWindowOpacity_double";
      case 984:
        return "c_KDDockWidgets__flutter__MainWindow__setWindowTitle_QString";
      case 985:
        return "c_KDDockWidgets__flutter__MainWindow__setZOrder_int";
      case 986:
        return "c_KDDockWidgets__flutter__MainWindow__show";
      case 987:
        return "c_KDDockWidgets__flutter__MainWindow__showMaximized";
      case 988:
        return "c_KDDockWidgets__flutter__MainWindow__showMinimized";
      case 989:
        return "c_KDDockWidgets__flutter__MainWindow__showNormal";
      case 990:
        return "c_KDDockWidgets__flutter__MainWindow__update";
      case 991:
        return "c_KDDockWidgets__flutter__MainWindow__viewName";
    }
    return super.cFunctionSymbolName(methodId);
  }

  static String methodNameFromId(int methodId) {
    switch (methodId) {
      case 921:
        return "activateWindow";
      case 1053:
        return "centralAreaGeometry";
      case 931:
        return "close";
      case 933:
        return "createPlatformWindow";
      case 938:
        return "flags";
      case 939:
        return "geometry";
      case 940:
        return "grabMouse";
      case 943:
        return "hasFocus";
      case 944:
        return "hide";
      case 946:
        return "init";
      case 948:
        return "isActiveWindow";
      case 949:
        return "isExplicitlyHidden";
      case 950:
        return "isMaximized";
      case 951:
        return "isMinimized";
      case 1009:
        return "isMounted";
      case 952:
        return "isNull";
      case 953:
        return "isRootView";
      case 954:
        return "isVisible";
      case 955:
        return "mapFromGlobal";
      case 956:
        return "mapTo";
      case 957:
        return "mapToGlobal";
      case 958:
        return "maxSizeHint";
      case 959:
        return "minSize";
      case 960:
        return "move";
      case 961:
        return "normalGeometry";
      case 1010:
        return "onChildAdded";
      case 1011:
        return "onChildRemoved";
      case 1012:
        return "onChildVisibilityChanged";
      case 1014:
        return "onGeometryChanged";
      case 1016:
        return "onRebuildRequested";
      case 963:
        return "onResize_2";
      case 964:
        return "raise";
      case 965:
        return "raiseAndActivate";
      case 1018:
        return "raiseChild";
      case 1019:
        return "raiseWindow";
      case 966:
        return "releaseKeyboard";
      case 967:
        return "releaseMouse";
      case 1056:
        return "setContentsMargins";
      case 970:
        return "setCursor";
      case 971:
        return "setFixedHeight";
      case 972:
        return "setFixedWidth";
      case 973:
        return "setGeometry";
      case 974:
        return "setHeight";
      case 975:
        return "setMaximumSize";
      case 976:
        return "setMinimumSize";
      case 977:
        return "setMouseTracking";
      case 978:
        return "setParent";
      case 979:
        return "setSize";
      case 980:
        return "setViewName";
      case 981:
        return "setVisible";
      case 982:
        return "setWidth";
      case 983:
        return "setWindowOpacity";
      case 984:
        return "setWindowTitle";
      case 985:
        return "setZOrder";
      case 986:
        return "show";
      case 987:
        return "showMaximized";
      case 988:
        return "showMinimized";
      case 989:
        return "showNormal";
      case 990:
        return "update";
      case 991:
        return "viewName";
    }
    throw Error();
  }

  void registerCallbacks() {
    assert(thisCpp != null);
    final RegisterMethodIsReimplementedCallback registerCallback = _dylib
        .lookup<ffi.NativeFunction<RegisterMethodIsReimplementedCallback_FFI>>(
            'c_KDDockWidgets__flutter__MainWindow__registerVirtualMethodCallback')
        .asFunction();
    final callback921 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.activateWindow_calledFromC);
    registerCallback(thisCpp, callback921, 921);
    final callback1053 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.MainWindow.centralAreaGeometry_calledFromC);
    registerCallback(thisCpp, callback1053, 1053);
    const callbackExcept931 = 0;
    final callback931 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.close_calledFromC, callbackExcept931);
    registerCallback(thisCpp, callback931, 931);
    final callback933 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsCore.View.createPlatformWindow_calledFromC);
    registerCallback(thisCpp, callback933, 933);
    const callbackExcept938 = 0;
    final callback938 = ffi.Pointer.fromFunction<int_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.flags_calledFromC, callbackExcept938);
    registerCallback(thisCpp, callback938, 938);
    final callback939 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.geometry_calledFromC);
    registerCallback(thisCpp, callback939, 939);
    final callback940 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.grabMouse_calledFromC);
    registerCallback(thisCpp, callback940, 940);
    const callbackExcept943 = 0;
    final callback943 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.hasFocus_calledFromC, callbackExcept943);
    registerCallback(thisCpp, callback943, 943);
    final callback944 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.hide_calledFromC);
    registerCallback(thisCpp, callback944, 944);
    final callback946 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsCore.View.init_calledFromC);
    registerCallback(thisCpp, callback946, 946);
    const callbackExcept948 = 0;
    final callback948 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isActiveWindow_calledFromC, callbackExcept948);
    registerCallback(thisCpp, callback948, 948);
    const callbackExcept949 = 0;
    final callback949 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isExplicitlyHidden_calledFromC,
        callbackExcept949);
    registerCallback(thisCpp, callback949, 949);
    const callbackExcept950 = 0;
    final callback950 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isMaximized_calledFromC, callbackExcept950);
    registerCallback(thisCpp, callback950, 950);
    const callbackExcept951 = 0;
    final callback951 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isMinimized_calledFromC, callbackExcept951);
    registerCallback(thisCpp, callback951, 951);
    const callbackExcept1009 = 0;
    final callback1009 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isMounted_calledFromC, callbackExcept1009);
    registerCallback(thisCpp, callback1009, 1009);
    const callbackExcept952 = 0;
    final callback952 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsCore.View.isNull_calledFromC, callbackExcept952);
    registerCallback(thisCpp, callback952, 952);
    const callbackExcept953 = 0;
    final callback953 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isRootView_calledFromC, callbackExcept953);
    registerCallback(thisCpp, callback953, 953);
    const callbackExcept954 = 0;
    final callback954 = ffi.Pointer.fromFunction<bool_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.isVisible_calledFromC, callbackExcept954);
    registerCallback(thisCpp, callback954, 954);
    final callback955 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.mapFromGlobal_calledFromC);
    registerCallback(thisCpp, callback955, 955);
    final callback956 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.mapTo_calledFromC);
    registerCallback(thisCpp, callback956, 956);
    final callback957 =
        ffi.Pointer.fromFunction<voidstar_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.mapToGlobal_calledFromC);
    registerCallback(thisCpp, callback957, 957);
    final callback958 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.maxSizeHint_calledFromC);
    registerCallback(thisCpp, callback958, 958);
    final callback959 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.minSize_calledFromC);
    registerCallback(thisCpp, callback959, 959);
    final callback960 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.move_calledFromC);
    registerCallback(thisCpp, callback960, 960);
    final callback961 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.normalGeometry_calledFromC);
    registerCallback(thisCpp, callback961, 961);
    final callback1010 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.onChildAdded_calledFromC);
    registerCallback(thisCpp, callback1010, 1010);
    final callback1011 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.onChildRemoved_calledFromC);
    registerCallback(thisCpp, callback1011, 1011);
    final callback1012 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.onChildVisibilityChanged_calledFromC);
    registerCallback(thisCpp, callback1012, 1012);
    final callback1014 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.onGeometryChanged_calledFromC);
    registerCallback(thisCpp, callback1014, 1014);
    final callback1016 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.onRebuildRequested_calledFromC);
    registerCallback(thisCpp, callback1016, 1016);
    const callbackExcept963 = 0;
    final callback963 =
        ffi.Pointer.fromFunction<bool_Func_voidstar_ffi_Int32_ffi_Int32_FFI>(
            KDDWBindingsCore.View.onResize_2_calledFromC, callbackExcept963);
    registerCallback(thisCpp, callback963, 963);
    final callback964 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.raise_calledFromC);
    registerCallback(thisCpp, callback964, 964);
    final callback965 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.raiseAndActivate_calledFromC);
    registerCallback(thisCpp, callback965, 965);
    final callback1018 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.raiseChild_calledFromC);
    registerCallback(thisCpp, callback1018, 1018);
    final callback1019 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.raiseWindow_calledFromC);
    registerCallback(thisCpp, callback1019, 1019);
    final callback966 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.releaseKeyboard_calledFromC);
    registerCallback(thisCpp, callback966, 966);
    final callback967 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.releaseMouse_calledFromC);
    registerCallback(thisCpp, callback967, 967);
    final callback1056 = ffi.Pointer.fromFunction<
            void_Func_voidstar_ffi_Int32_ffi_Int32_ffi_Int32_ffi_Int32_FFI>(
        KDDWBindingsFlutter.MainWindow.setContentsMargins_calledFromC);
    registerCallback(thisCpp, callback1056, 1056);
    final callback970 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setCursor_calledFromC);
    registerCallback(thisCpp, callback970, 970);
    final callback971 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setFixedHeight_calledFromC);
    registerCallback(thisCpp, callback971, 971);
    final callback972 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setFixedWidth_calledFromC);
    registerCallback(thisCpp, callback972, 972);
    final callback973 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setGeometry_calledFromC);
    registerCallback(thisCpp, callback973, 973);
    final callback974 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setHeight_calledFromC);
    registerCallback(thisCpp, callback974, 974);
    final callback975 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setMaximumSize_calledFromC);
    registerCallback(thisCpp, callback975, 975);
    final callback976 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setMinimumSize_calledFromC);
    registerCallback(thisCpp, callback976, 976);
    final callback977 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int8_FFI>(
            KDDWBindingsFlutter.View.setMouseTracking_calledFromC);
    registerCallback(thisCpp, callback977, 977);
    final callback978 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setParent_calledFromC);
    registerCallback(thisCpp, callback978, 978);
    final callback979 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setSize_calledFromC);
    registerCallback(thisCpp, callback979, 979);
    final callback980 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setViewName_calledFromC);
    registerCallback(thisCpp, callback980, 980);
    final callback981 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int8_FFI>(
            KDDWBindingsFlutter.View.setVisible_calledFromC);
    registerCallback(thisCpp, callback981, 981);
    final callback982 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setWidth_calledFromC);
    registerCallback(thisCpp, callback982, 982);
    final callback983 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Double_FFI>(
            KDDWBindingsFlutter.View.setWindowOpacity_calledFromC);
    registerCallback(thisCpp, callback983, 983);
    final callback984 =
        ffi.Pointer.fromFunction<void_Func_voidstar_voidstar_FFI>(
            KDDWBindingsFlutter.View.setWindowTitle_calledFromC);
    registerCallback(thisCpp, callback984, 984);
    final callback985 =
        ffi.Pointer.fromFunction<void_Func_voidstar_ffi_Int32_FFI>(
            KDDWBindingsFlutter.View.setZOrder_calledFromC);
    registerCallback(thisCpp, callback985, 985);
    final callback986 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.show_calledFromC);
    registerCallback(thisCpp, callback986, 986);
    final callback987 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.showMaximized_calledFromC);
    registerCallback(thisCpp, callback987, 987);
    final callback988 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.showMinimized_calledFromC);
    registerCallback(thisCpp, callback988, 988);
    final callback989 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.showNormal_calledFromC);
    registerCallback(thisCpp, callback989, 989);
    final callback990 = ffi.Pointer.fromFunction<void_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.update_calledFromC);
    registerCallback(thisCpp, callback990, 990);
    final callback991 = ffi.Pointer.fromFunction<voidstar_Func_voidstar_FFI>(
        KDDWBindingsFlutter.View.viewName_calledFromC);
    registerCallback(thisCpp, callback991, 991);
  }
}
