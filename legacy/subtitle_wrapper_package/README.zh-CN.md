# subtitle_wrapper_package

[![](https://img.shields.io/badge/pub-v1.0.3-brightgreen.svg)](https://pub.dev/packages/subtitle_wrapper_package)
![Test and publish package](https://github.com/Joran-Dob/flutter_subtitle_wrapper/workflows/Test%20and%20publish%20package/badge.svg?branch=master)
[![codecov](https://codecov.io/gh/Joran-Dob/flutter_subtitle_wrapper/branch/master/graph/badge.svg)](https://codecov.io/gh/Joran-Dob/flutter_subtitle_wrapper)
[![licence](https://img.shields.io/badge/licence-MIT-blue.svg)](https://github.com/IamTobi/spotify_sdk/blob/master/LICENSE)

## 功能

目前支持两种最常用的字幕格式。字幕可以在播放时通过 URL 或内容字符串动态更新，也支持对字幕文本进行基础样式设置。

该包几乎已经完成单元测试，widget 测试仍在进行中。

| 功能 | 说明 | 已实现 |
|---|---|---|
| 解析 WebVTT | 解析 WebVTT 字幕。 | :heavy_check_mark: |
| 解析 SubRip (.srt) | 解析 SubRip 字幕。 | :heavy_check_mark: |
| 远程加载 utf8 编码字幕 | 通过 URL 解析 utf8 编码的字幕文件。 | :heavy_check_mark: |
| 远程加载 latin1 编码字幕 | 通过 URL 解析 latin1 编码的字幕文件。 | :heavy_check_mark: |
| 动态更新字幕 | 播放过程中更新字幕内容。 | :heavy_check_mark: |
| 标准字幕样式 | 字幕条目的标准样式。 | :heavy_check_mark: |
| 高级字幕样式 | 字幕条目的高级样式，例如自定义字体。 | :construction_worker: |

## 安装

这个包的基本设置很直接：根据字幕资源是远程还是本地，创建一个带有 `subtitleUrl` 或 `subtitlesContent` 的 `SubtitleController` 实例。

当前仍然需要指定字幕类型，也就是 `webvtt` 或 `srt`。

之后用 `SubTitleWrapper` 包裹你的视频播放器，并把 `SubtitleController` 和 `videoPlayerController` 添加到 `SubTitleWrapper` 中。这样就完成了。

``` dart
 final SubtitleController subtitleController = SubtitleController(
    subtitleUrl: "https://pastebin.com/raw/ZWWAL7fK",
    subtitleType: SubtitleType.webvtt,
  );

 SubTitleWrapper(
       videoPlayerController: videoPlayerController,
       subtitleController: subtitleController,
       subtitleStyle: SubtitleStyle(
         textColor: Colors.white,
         hasBorder: true,
       ),
       videoChild: Chewie(
         controller: chewieController,
       ),
	),
```

## 示例

示例展示了如何使用 `subtitle_wrapper_package` 插件。

更多信息请见 [example 文档](example/README.md)。

## 更新日志

见 [CHANGELOG.md](CHANGELOG.md)。

## 贡献

欢迎通过提交 issue 和/或 pull request 参与贡献。非常欢迎你的反馈。

## 许可证

MIT License

Copyright (c) [2019] [Joran Dob]
