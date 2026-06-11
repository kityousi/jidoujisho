## 0.12.1+1

* Lint：按 80 字符行宽格式化，以提高 pub 评分。

## 0.12.2

* 修复：[`resizeToAvoidBottomPadding`](https://api.flutter.dev/flutter/material/Scaffold/resizeToAvoidBottomPadding.html) 已弃用，替换为 `resizeToAvoidBottomInset`。
  - 感谢：[#423](https://github.com/brianegan/chewie/pull/423)

## 0.12.1

* 修复：Cupertino 控件中对 null 调用 Duration 的问题。
  - 感谢：[#406](https://github.com/brianegan/chewie/pull/406)
* 将所需 Flutter 版本从 1.20 提升到 1.22。
  - 感谢：[#401](https://github.com/brianegan/chewie/pull/401)
* 在 `chewie.dart` 中导出 controls。
  - 感谢：[#355](https://github.com/brianegan/chewie/pull/355)
* 新增 `lint` linter。
* 新增 CI，用于分析代码并检查格式。

## 0.12.0

* 新增重播功能。
* 新增动画播放/暂停按钮。
  - 感谢：[#228](https://github.com/brianegan/chewie/pull/228)

## 0.11.0

* 新增播放速度控制。
  - 感谢：[#390](https://github.com/brianegan/chewie/pull/390)
* 修正依赖。
  - 感谢：[#395](https://github.com/brianegan/chewie/pull/395)

## 0.10.4

* 更新 Android 示例以支持最新环境。
* 更新 Dart SDK。
* 更新 Flutter SDK。
* 更新 `wakelock` 依赖。

## 0.10.3+1

* 为 pub.dev 使用 `dartfmt -w .` 格式化。

## 0.10.3

* Bug 修复：仅在 widget 已挂载时调用 `setState`（Cupertino + Material）。
  - 感谢：[#309](https://github.com/brianegan/chewie/pull/309)

## 0.10.2

* 将 `open_iconic_flutter` 替换为 `cupertino_icons`，以解决 Apple App Store 拒审问题（ITMS-90853）。
  - 修复：[#381](https://github.com/brianegan/chewie/issues/381)

## 0.10.1

* 更新 `video_player` 依赖（稳定版）。

## 0.10.0

* 修复竖屏模式。
* 根据视频宽高比自动检测方向。
* 为 `onEnterFullScreen` 新增可选参数。
* 在全屏时通过 SafeArea 支持 iOS 14。

## 0.9.10

* 从全屏页面路由中移除 `isInitialRoute`。

## 0.9.9

* 由于 `flutter_screen` 缺少维护，将 wakelock 插件从 `flutter_screen` 改为 `wakelock`。

## 0.9.8+1

* 要求最新 Flutter 稳定版。

## 0.9.8

* 不再使用 Hero Widget（感谢 @localpcguy）。
* 点击即可隐藏控件（感谢 @bostrot）。
* 视频结束后点击播放会重播（感谢 @VictorUvarov）。

## 0.9.7

* 正确处理错误。可以通过向 `ChewieController` 构造函数提供 `errorBuilder` 来指定发生错误时显示的 Widget。
* 新增覆盖全屏页面 builder 的能力，方便自定义该功能。

## 0.9.6

* 更新以兼容 `video_player: ">=0.7.0 <0.11.0"`。

## 0.9.5

* 外观调整：移除上个版本误带入的未完成 fit 属性。

## 0.9.4

* 新增 overlay 选项，可在视频和控件之间放置 widget。
* 更新以兼容 `video_player: ">=0.7.0 <0.10.0"`。

## 0.9.3

* 控件隐藏时吸收指针事件。

## 0.9.2

* 新增退出全屏后定义系统 overlay 的选项。
* 新增隐藏静音按钮的选项。

## 0.9.1

* 新增隐藏全屏按钮的选项。

## 0.9.0

* **破坏性变更**：新增 `ChewieController`，让从播放器外部进行自定义和控制更容易。升级方式见 [README](README.md)。

## 0.8.0

* 更新以兼容 `video_player: ">=0.7.0 <0.8.0"`，感谢 @Sub6Resources。
* 全屏时保留 AspectRatio，感谢 @patrickb。
* 支持从全屏状态开始播放视频，感谢 @miguelpruivo。

## 0.7.0

* 要求 Dart 2。
* 更新了不兼容 Dart 2 的依赖。

## 0.6.1

* 修复时间格式。
* 修复跳转。
* dispose 时移除监听器。
* 支持从指定位置开始播放视频。

## 0.6.0

* 更新以兼容 `video_player: ">=0.6.0 <0.7.0"`。

## 0.5.1

* 更新 README，修正安装说明。

## 0.5.0

* 更新以兼容 `video_player: ">=0.5.0 <0.6.0"`。

## 0.3.0

* 更新以兼容 `video_player: ">=0.2.0 <0.3.0"`。
* 新增 `showControls` 选项，可显示或隐藏控件。
* 从 `VideoProgressColors` 迁移到 `ChewieProgressColors`，用于自定义 Chewie 进度控件。
* 移除 `progressColors`，改用平台特定的 `cupertinoProgressColors` 和 `materialProgressColors`。
* 新增 analysis options。

## 0.2.0

* 改为接收 `controller`，而不是 `String uri`。这让需要时可以在播放器外部更好地控制播放。

## 0.1.1

* 修复 pub 文档中的图片。

## 0.1.0

Chewie 的初始版本，一个用心的视频播放器。

* 把 VideoPlayerController 交给 Chewie，剩下的交给它处理。
* 包含 Material 播放器控件。
* 包含 Cupertino 播放器控件。
* Spike 版本：重点是做出好看的 UI。内部代码还比较粗糙，需要重构和测试。
