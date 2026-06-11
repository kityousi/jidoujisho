# chewie

[![Version](https://img.shields.io/badge/pub-v0.12.0-blue)](https://pub.dev/packages/chewie)
![CI](https://github.com/brianegan/chewie/workflows/CI/badge.svg)
[![Generic badge](https://img.shields.io/badge/platform-android%20|%20ios%20|%20web%20-blue.svg)](https://pub.dev/packages/chewie)

Chewie 是一个为 Flutter 准备的视频播放器，外表简单，内心可靠。

[`video_player`](https://pub.dartlang.org/packages/video_player) 插件提供底层的视频播放能力。Chewie 在内部使用 `video_player`，并把它包装成更友好的 Material 或 Cupertino 界面。

## 演示

![Demo](https://github.com/brianegan/chewie/raw/master/assets/chewie_demo.gif)

## 安装

在 Flutter 项目的 `pubspec.yaml` 中加入：

```yaml
dependencies:
  chewie: <latest_version>
  video_player: <latest_version>
```

## 使用

```dart
import 'package:chewie/chewie.dart';
final videoPlayerController = VideoPlayerController.network(
    'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');

await videoPlayerController.initialize();

final chewieController = ChewieController(
  videoPlayerController: videoPlayerController,
  autoPlay: true,
  looping: true,
);

final playerWidget = Chewie(
  controller: chewieController,
);
```

使用结束后，请确保释放两个 controller。例如可以在 `StatefulWidget` 的 `dispose` 方法中处理：

```dart
@override
void dispose() {
  videoPlayerController.dispose();
  chewieController.dispose();
  super.dispose();
}
```

## 示例

运行 [`example/`](https://github.com/brianegan/chewie/tree/master/example) 文件夹中的应用即可开始播放。

## 从 Chewie < 0.9.0 迁移

以前会把 `VideoPlayerController` 和选项直接传给 `Chewie` 组件。现在需要把它们传给 `ChewieController`，再把这个 controller 传给 `Chewie` 组件。

```dart
final playerWidget = Chewie(
  videoPlayerController,
  autoPlay: true,
  looping: true,
);
```

改为：

```dart
final chewieController = ChewieController(
  videoPlayerController: videoPlayerController,
  autoPlay: true,
  looping: true,
);

final playerWidget = Chewie(
  controller: chewieController,
);
```

## iOS 警告

Chewie 使用的视频播放器插件在 iOS 模拟器上不可用。开发和测试时必须使用 iOS 真机。详情请参考这个 [issue](https://github.com/flutter/flutter/issues/14647)。
