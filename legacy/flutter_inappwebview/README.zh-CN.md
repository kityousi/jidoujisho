# Flutter InAppWebView 插件 [![Share on Twitter](https://img.shields.io/twitter/url/http/shields.io.svg?style=social)](https://twitter.com/intent/tweet?text=Flutter%20InAppBrowser%20plugin!&url=https://github.com/pichillilorenzo/flutter_inappwebview&hashtags=flutter,flutterio,dart,dartlang,webview) [![Share on Facebook](https://img.shields.io/badge/share-facebook-blue.svg?longCache=true&style=flat&colorB=%234267b2)](https://www.facebook.com/sharer/sharer.php?u=https%3A//github.com/pichillilorenzo/flutter_inappwebview)

[![Pub](https://img.shields.io/pub/v/flutter_inappwebview.svg)](https://pub.dartlang.org/packages/flutter_inappwebview)
[![pub points](https://badges.bar/flutter_inappwebview/pub%20points)](https://pub.dev/packages/flutter_inappwebview/score)
[![popularity](https://badges.bar/flutter_inappwebview/popularity)](https://pub.dev/packages/flutter_inappwebview/score)
[![likes](https://badges.bar/flutter_inappwebview/likes)](https://pub.dev/packages/flutter_inappwebview/score)
[![Awesome Flutter](https://img.shields.io/badge/Awesome-Flutter-blue.svg?longCache=true&style=flat-square)](https://stackoverflow.com/questions/tagged/flutter-inappwebview)
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](/LICENSE)

[![Donate to this project](https://img.shields.io/badge/support-donate-yellow.svg)](https://inappwebview.dev/donate/)
[![GitHub contributors](https://img.shields.io/github/contributors/pichillilorenzo/flutter_inappwebview)](https://github.com/pichillilorenzo/flutter_inappwebview/graphs/contributors)
[![GitHub forks](https://img.shields.io/github/forks/pichillilorenzo/flutter_inappwebview?style=social)](https://github.com/pichillilorenzo/flutter_inappwebview)
[![GitHub stars](https://img.shields.io/github/stars/pichillilorenzo/flutter_inappwebview?style=social)](https://github.com/pichillilorenzo/flutter_inappwebview)

![InAppWebView-logo](https://user-images.githubusercontent.com/5956938/110180687-8751f480-7e0a-11eb-89cc-d62f85c148cb.png)

这是一个 Flutter 插件，可用于添加内联 WebView、使用无头 WebView，以及打开应用内浏览器窗口。

## 文章/资源

- [官方文档：inappwebview.dev/docs](https://inappwebview.dev/docs/)
- 阅读在线 [API Reference](https://pub.dartlang.org/documentation/flutter_inappwebview/latest/)，获取**完整 API 文档**。
- [官方博客：inappwebview.dev/blog](https://inappwebview.dev/blog/)
- 可在 [官方 Showcase 页面：inappwebview.dev/showcase](https://inappwebview.dev/showcase/) 查找开源项目。
- 查看 [example/integration_test/webview_flutter_test.dart](https://github.com/pichillilorenzo/flutter_inappwebview/blob/master/example/integration_test/webview_flutter_test.dart) 文件，了解更多代码示例。
- [Flutter Browser App](https://github.com/pichillilorenzo/flutter_browser_app)：一个功能完整的移动浏览器应用（类似 Google Chrome 移动浏览器），使用 Flutter 和 `flutter_inappwebview` 插件提供的功能构建。

## Showcase - 谁在使用它

查看 [Showcase](https://inappwebview.dev/showcase/) 页面，可以看到使用 **Flutter** 和 **Flutter InAppWebView** 构建的应用开放列表。

#### 你正在使用 **Flutter InAppWebView** 插件，并希望把自己的 App 添加进去吗？

请到 [Submit App](https://inappwebview.dev/submit-app/) 页面提交申请。

## 要求

- Dart sdk：`">=2.12.0-0 <3.0.0"`
- Flutter：`">=1.22.2"`
- Android：`minSdkVersion 17`，并添加 `androidx` 支持（迁移现有应用请参考 [AndroidX Migration](https://flutter.dev/docs/development/androidx-migration)）
- iOS：`--ios-language swift`，Xcode 版本 `>= 12`

## 安装

在 [`pubspec.yaml` 文件中添加依赖](https://flutter.io/using-packages/)：`flutter_inappwebview`。

## 主要类概览

* [InAppWebView](https://inappwebview.dev/docs/in-app-webview/basic-usage/)：Flutter Widget，用于把内联原生 WebView 集成到 Flutter widget 树中。
* [ContextMenu](https://inappwebview.dev/docs/context-menu/basic-usage/)：表示 WebView 上下文菜单的类。
* [HeadlessInAppWebView](https://inappwebview.dev/docs/headless-in-app-webview/basic-usage/)：表示无头模式 WebView 的类。它可以在后台运行 WebView，而不需要把 InAppWebView 挂到 widget 树上。
* [InAppBrowser](https://inappwebview.dev/docs/in-app-browser/basic-usage/)：使用原生 WebView 的应用内浏览器。
* [ChromeSafariBrowser](https://inappwebview.dev/docs/chrome-safari-browser/basic-usage/)：在 Android 上使用 Chrome Custom Tabs、在 iOS 上使用 SFSafariViewController 的应用内浏览器。
* [InAppLocalhostServer](https://inappwebview.dev/docs/in-app-localhost-server/basic-usage/)：用于在 `http://localhost:[port]/` 创建简单服务器的类。默认端口为 8080。
* [CookieManager](https://inappwebview.dev/docs/cookie-manager/basic-usage/)：实现为单例对象（共享实例）的类，用于管理 WebView 实例使用的 cookie。
* [HttpAuthCredentialDatabase](https://inappwebview.dev/docs/http-auth-credential-database/basic-usage/)：实现为单例对象（共享实例）的类，用于管理共享的 HTTP 认证凭据缓存。
* [WebStorageManager](https://inappwebview.dev/docs/web-storage-manager/basic-usage/)：实现为单例对象（共享实例）的类，用于管理 WebView 实例使用的 Web Storage。

## 支持

如果你觉得这个插件有用，请考虑[捐赠](https://inappwebview.dev/donate/)，帮助改进它。
