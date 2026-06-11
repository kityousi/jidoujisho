# flutter_inappwebview 更新日志（中文）

> 本文件逐条保留原 CHANGELOG 的版本号、链接和 API 名称。API 名称和 issue 标题尽量保留原文，动作说明翻译为中文，便于与英文原文对照。

## 5.3.2

- 新增 `onLoad` 和 `onError` 回调 在 `ScriptHtmlTagAttributes` 类 used 由 `InAppWebViewController.injectJavascriptFileFromUrl`
- `InAppWebViewController.injectJavascriptFileFromAsset` 现在返回 `Future<dynamic>` 类型 现在

## 5.3.1+1

- 移除 重复的 lib exports
- 修复 一些 rare cases 当 iOS WKWebView `scrollViewDidEndDragging` 事件 blocks the scroll gesture

## 5.3.1

- 新增 支持 的 `allowingReadAccessTo` iOS 特定 WebView 选项 用于 the WebView `initialData` 参数
- 新增 `iosAllowingReadAccessTo` iOS 特定 参数 到 the `loadData` WebView 方法
- 修复 "iOS webview showing blank page 在 specific URL" [#776](https://github.com/pichillilorenzo/flutter_inappwebview/issues/776)
- 修复 "unable 到 access ApplicationDocumentsDirectory 在 real Ios devices" [#748](https://github.com/pichillilorenzo/flutter_inappwebview/issues/748)

## 5.3.0+1

- 修复 "Android - Pull 到 refresh triggered 当 scrolling container inside a website" [#765](https://github.com/pichillilorenzo/flutter_inappwebview/issues/765)
- 修复 "InAppWebViewController.getHitTestResult" 错误的 类型 mapping

## 5.3.0

- 新增 `initialSize` 属性 到 the `HeadlessInAppWebView` 类
- 新增 `setSize` 和 `getSize` 方法 到 the `HeadlessInAppWebView` 类
- `androidOnScaleChanged` WebView 事件 现已弃用。请使用新的 `onZoomScaleChanged` WebView 事件, that 是 同时适用于 Android 和 iOS
- `getScale` WebView 方法 现已弃用。请使用新的 `getZoomScale` WebView 方法
- 移除 `final` keyword 用于 所有 `HeadlessInAppWebView` 事件
- 修复 错误的 usage 的 Android WebView scale 属性
- 修复 "java.lang.NullPointerException: com.pichillilorenzo.flutter_inappwebview.in_app_webview.InAppWebViewRenderProcessClient$1.success(InAppWebViewRenderProcessClient.java:37)" [#757](https://github.com/pichillilorenzo/flutter_inappwebview/issues/757)
- 修复 "In a multi-activity app, the plugin doesn't reattach 到 the first activity" [#732](https://github.com/pichillilorenzo/flutter_inappwebview/issues/732)
- 修复 "ChromeSafariBrowser isn't calling its 事件, 和 不 keeping track 的 isOpen properly" [#759](https://github.com/pichillilorenzo/flutter_inappwebview/issues/759)
- 修复 Android ChromeSafariBrowser menu item 回调 不 called because 的 PendingIntents extra were cached

## 5.2.1+1

- 修复 iOS "Unexpectedly found nil while unwrapping an Optional 值: file flutter_inappwebview/WKUserContentController.swift, line 36" 错误 当 `applePayAPIEnabled` iOS 特定 WebView 选项 是 启用

## 5.2.1

- 新增 `isRunning` 方法 到 the `HeadlessInAppWebView` 类
- 新增 `isRunning` 方法 到 the `InAppLocalhostServer` 类
- 新增 `allowGoBackWithBackButton` 和 `shouldCloseOnBackButtonPressed` Android 特定 InAppBrowser 选项
- 修复 iOS `WebMessageListener` JavaScript 实现 不 calling 事件 listeners 当 `onmessage` 是 set
- 修复 `onCreateContextMenu` 事件 在 Android 其中 `hitTestResult` 有 always `null` 值
- 修复 "java.lang.NullPointerException: Attempt 到 invoke virtual 方法 'void android.widget.SearchView.setQuery(java.lang.CharSequence, boolean)' 在 a null object reference" [#742](https://github.com/pichillilorenzo/flutter_inappwebview/issues/742)
- 修复 Android js 错误 在 一些 very rare case 其中 `window.flutter_inappwebview` 是 `undefined` 当 loading plugin scripts

## 5.2.0

- 新增 `WebMessageChannel` 和 `WebMessageListener` 功能
- 新增 `canScrollVertically` 和 `canScrollHorizontally` webview 方法
- 新增 Android pull-到-refresh `setSize` 方法 和 `size` 选项
- 新增 `onOverScrolled` WebView 事件
- `AndroidInAppWebViewController.getCurrentWebViewPackage` 是 可用 现在 starting 从 Android API 21+
- 更新 Android Gradle distributionUrl 版本 到 `5.6.4`
- 更新 Android `androidx.webkit:webkit` 到 `1.4.0`, `androidx.browser:browser` 到 `1.3.0`, `androidx.appcompat:appcompat` 到 `1.2.0`
- 尝试修复 "InAppBrowserActivity.onCreate NullPointerException - Attempt 到 invoke virtual 方法 'java.lang.String android.os.Bundle.getString(java.lang.String)' 在 a null object reference" [#665](https://github.com/pichillilorenzo/flutter_inappwebview/issues/665)
- 修复 "[iOS] Application 崩溃 当 processing onCreateWindow" [#579](https://github.com/pichillilorenzo/flutter_inappwebview/issues/579)
- 修复 错误的 mapping 的 `NavigationAction` 类 在 Android 用于 `androidHasGesture` 和 `androidIsRedirect` 属性
- 修复 "Pull 到 refresh creating problem 在 一些 webpages 在 Android" [#719](https://github.com/pichillilorenzo/flutter_inappwebview/issues/719)
- 修复 iOS sometimes `scrollView.contentSize` doesn't fit 所有 the `frame.size` 可用
- 修复 ajax 和 fetch interceptor 当 the data/body sent 是 不 a string
- 修复 "InAppLocalhostServer - Error: 类型 'List<dynamic>' 是 不 a subtype 的 类型 'List<int>' 在 类型 cast" [#724](https://github.com/pichillilorenzo/flutter_inappwebview/issues/724)
- 合并“fix proguard” [#737](https://github.com/pichillilorenzo/flutter_inappwebview/pull/737) (感谢 [myroid](https://github.com/myroid))

### 破坏性变更

- `FetchRequest.body` 是 a dynamic 类型 现在

## 5.1.0+4

- 修复 "IOS scrolling 崩溃 the application" [#707](https://github.com/pichillilorenzo/flutter_inappwebview/issues/707)

## 5.1.0+3

- 修复 "Unsupported operation: Platform._operatingSystem" 当 compiling 用于 Web again [#507](https://github.com/pichillilorenzo/flutter_inappwebview/issues/507)

## 5.1.0+2

- 修复 缺失的 MATCH_PARENT layout params 到 the WebView 在 Android 当 it 是 wrapped 由 PullToRefreshLayout

## 5.1.0+1

- 新增 a test 用于 the pull-到-refresh 功能 当 used 在 Android. It requires the `useHybridComposition: true` Android 特定 选项, otherwise it will throw an exception.

## 5.1.0

- 新增 支持 用于 pull-到-refresh 功能 [#395](https://github.com/pichillilorenzo/flutter_inappwebview/issues/395)
- 修复 issue 不 rendering WebView content 当 scrolling 在 iOS [#703](https://github.com/pichillilorenzo/flutter_inappwebview/issues/703)
- 修复 `InAppBrowser.openData` 方法
- `InAppBrowser.initialUserScripts`, `InAppBrowser.id`, `HeadlessInAppWebView.id` 属性 是 `final` 现在

## 5.0.5+3

- 修复 Android `evaluateJavascript` 方法 当 using `contentWorld: ContentWorld.PAGE`

## 5.0.5+2

- 更新 文档 用于 iOS 特定 选项 `alwaysBounceVertical` 和 `alwaysBounceHorizontal`

## 5.0.5+1

- 修复 "No bounce 在 inappwebview iOS" [#696](https://github.com/pichillilorenzo/flutter_inappwebview/issues/696)

## 5.0.5

- 更新 Android `WebChromeClient.getDefaultVideoPoster`
- 移除 所有 the 依赖: `uuid`, `device_info`, `intl`, 和 `mime`

## 5.0.4-nullsafety.1

- 新增 `headers` 和 `statusCode` 属性 到 IOSURLResponse 类

## 5.0.3-nullsafety.1

- 修复 Android screenshot out 的 memory 错误
- 修复 `getFavicons` WebView 方法

## 5.0.2-nullsafety.1

- 修复 缺失的 `verticalScrollbarThumbColor`, `verticalScrollbarTrackColor`, `horizontalScrollbarThumbColor`, `horizontalScrollbarTrackColor` Android 特定 WebView 选项 当 calling native java `setOptions()` 方法 在 Android

## 5.0.1-nullsafety.1

- 新增 `verticalScrollbarThumbColor`, `verticalScrollbarTrackColor`, `horizontalScrollbarThumbColor`, `horizontalScrollbarTrackColor` Android 特定 WebView 选项
- 修复 一些 null types 和 错误的 casting

## 5.0.0-nullsafety.0

- 新增 支持 用于 Dart null-safety 功能
- 新增 Android Hybrid Composition 支持 "Use PlatformViewLink widget 用于 Android WebView" [#462](https://github.com/pichillilorenzo/flutter_inappwebview/pull/462) (感谢 [plateaukao](https://github.com/plateaukao) 和 [tneotia](https://github.com/tneotia))
- 新增 `allowUniversalAccessFromFileURLs` 和 `allowFileAccessFromFileURLs` WebView 选项 also 用于 iOS (also thanks 到 [liranhao](https://github.com/liranhao))
- 新增 limited cookies 支持 在 iOS below 11.0 using JavaScript
- 新增 `IOSCookieManager` 类 和 `CookieManager.instance().ios.getAllCookies` iOS 特定 方法
- 新增 `UserScript`, `UserScriptInjectionTime`, `ContentWorld`, `AndroidWebViewFeature`, `AndroidServiceWorkerController`, `AndroidServiceWorkerClient`, `ScreenshotConfiguration`, `IOSWKPDFConfiguration`, `URLRequest` 类
- 新增 `initialUserScripts` WebView 选项
- 新增 `addUserScript`, `addUserScripts`, `removeUserScript`, `removeUserScripts`, `removeUserScriptsByGroupName`, `removeAllUserScripts`, `callAsyncJavaScript`, `isSecureContext` WebView 方法
- 新增 `contentWorld` 参数 到 `evaluateJavascript` WebView 方法
- 新增 `isDirectionalLockEnabled`, `mediaType`, `pageZoom`, `limitsNavigationsToAppBoundDomains`, `useOnNavigationResponse`, `applePayAPIEnabled`, `allowingReadAccessTo`, `disableLongPressContextMenuOnLinks` iOS 特定 WebView 选项
- 新增 `handlesURLScheme`, `createPdf`, `createWebArchiveData` iOS 特定 WebView 方法
- 新增 `iosOnNavigationResponse` 和 `iosShouldAllowDeprecatedTLS` iOS 特定 WebView 事件
- 新增 `iosAnimated` optional 参数 到 `zoomBy` WebView 方法
- 新增 `screenshotConfiguration` optional 参数 到 `takeScreenshot` WebView 方法
- 新增 `scriptHtmlTagAttributes` optional 参数 到 `injectJavascriptFileFromUrl` WebView 方法
- 新增 `cssLinkHtmlTagAttributes` optional 参数 到 `injectCSSFileFromUrl` WebView 方法
- 新增 `iosAllowingReadAccessTo` iOS 特定 optional 参数 到 `loadUrl` WebView 方法
- 新增 新 iOS 特定 属性 到 `ShouldOverrideUrlLoadingRequest` 和 `CreateWindowRequest` 类
- 新增 `toolbarTopTranslucent`, `toolbarTopTintColor`, `toolbarBottomTintColor`, `toolbarTopBarTintColor` iOS 特定 InAppBrowser 选项
- 更新 integration tests
- 合并“Upgraded appcompat 到 1.2.0-rc-02” [#465](https://github.com/pichillilorenzo/flutter_inappwebview/pull/465) (感谢 [andreidiaconu](https://github.com/andreidiaconu))
- 合并“Added 缺失的 field 'headers' which returned 由 WebResourceResponse.toMap()” [#490](https://github.com/pichillilorenzo/flutter_inappwebview/pull/490) (感谢 [Doflatango](https://github.com/Doflatango))
- 合并“Fix: added iOS fallback module import” [#466](https://github.com/pichillilorenzo/flutter_inappwebview/pull/466) (感谢 [Eddayy](https://github.com/Eddayy))
- 合并“Fix NullPointerException after taking a photo 由 a camera app 在 Android” [#492](https://github.com/pichillilorenzo/flutter_inappwebview/pull/492) (感谢 [AAkira](https://github.com/AAkira))
- 合并“iOS CookieManager.getCookies - Check that URL 有 suffix 的 cookie do…” [#658](https://github.com/pichillilorenzo/flutter_inappwebview/pull/658) (感谢 [arneke](https://github.com/arneke))
- 合并“Add NTLM Auth” [#634](https://github.com/pichillilorenzo/flutter_inappwebview/pull/634) (感谢 [albatrosify](https://github.com/albatrosify))
- 合并“iOS ChromeSafariBrowserManager - Fixing unnecessary casting 的 rootViewController 到 FlutterViewController” [#567](https://github.com/pichillilorenzo/flutter_inappwebview/pull/567) (感谢 [gunantosteven](https://github.com/gunantosteven))
- 合并“Fix _channel.invokeMethod name 用于 injectCSSFileFromUrl 方法” [#645](https://github.com/pichillilorenzo/flutter_inappwebview/pull/645) (感谢 [omralcrt](https://github.com/omralcrt))
- 合并“Add android media intents 在 wildcard input accept” [#620](https://github.com/pichillilorenzo/flutter_inappwebview/pull/620) (感谢 [cbodin](https://github.com/cbodin))
- 合并“Add ChromeSafariBrowser 支持 用于 Android 11” [#538](https://github.com/pichillilorenzo/flutter_inappwebview/pull/538) (感谢 [DRSchlaubi](https://github.com/DRSchlaubi))
- 合并“fix(iOS): 缺失的 实现 的 方法 zoomBy” [#670](https://github.com/pichillilorenzo/flutter_inappwebview/pull/670) (感谢 [pcqpcq](https://github.com/pcqpcq))
- 合并“[mod] Fix 所有 issues relate 到 long click 在 Android 版本 7.0 (#657, #527)” [#671](https://github.com/pichillilorenzo/flutter_inappwebview/pull/671) (感谢 [MrNinja](https://github.com/MrNinja))
- 合并“Fix ViewGroup.removeView NullPointerException (#450)” [#683](https://github.com/pichillilorenzo/flutter_inappwebview/pull/683) (感谢 [toda-bps](https://github.com/toda-bps))
- 修复 缺失的 属性 initialization 当 using InAppWebViewController.fromInAppBrowser
- 修复 "Issue 在 Flutter web: 'Unsupported operation: Platform._operatingSystem'" [#507](https://github.com/pichillilorenzo/flutter_inappwebview/issues/507)
- 修复 "window.flutter_inappwebview.callHandler 是 不 a function" [#218](https://github.com/pichillilorenzo/flutter_inappwebview/issues/218)
- 修复 "Android ContentBlocker - java.lang.NullPointerException ContentBlockerTrigger resource 类型" [#506](https://github.com/pichillilorenzo/flutter_inappwebview/issues/506)
- 修复 "Android CookieManager throws 错误 caused 由 websites that 是 sending back illegal/invalid cookies." [#476](https://github.com/pichillilorenzo/flutter_inappwebview/issues/476)
- 修复 缺失的 `clearHistory` webview 方法 实现 在 Android
- 修复 iOS 崩溃 当 using CookieManager getCookies 用于 an URL 和 the host URL 是 `null`
- 修复 "IOS does 不 支持 allowUniversalAccessFromFileURLs" [#654](https://github.com/pichillilorenzo/flutter_inappwebview/issues/654)
- 修复 "Failed 到 load WebView provider: No WebView installed" [#642](https://github.com/pichillilorenzo/flutter_inappwebview/issues/642)
- 修复 "java.net.MalformedURLException: unk现在n protocol: wss - Error using library sipml5 在 flutter_inappwebview" [#614](https://github.com/pichillilorenzo/flutter_inappwebview/issues/614)
- 修复 "Android 10 clipboard 不 working properly" [#678](https://github.com/pichillilorenzo/flutter_inappwebview/issues/678) (感谢 [armadastate](https://github.com/armadastate))

### 破坏性变更

- 要求的最低 Flutter 版本为 `1.22.2` 和 Dart SDK `>=2.12.0-0 <3.0.0`
- iOS Xcode 版本 `>= 12`
- `allowUniversalAccessFromFileURLs` 和 `allowFileAccessFromFileURLs` WebView 选项 moved 从 Android 特定 选项 到 跨平台 选项
- 新增 `callAsyncJavaScript` name 到 the list 的 javaScriptHandlerForbiddenNames
- 移动 `saveWebArchive` WebView 方法 从 Android 特定 到 跨平台
- 移动 `progressBar` InAppBroswer 从 Android 特定 选项 到 跨平台 选项 和 renamed 到 `hideProgressBar`
- 重命名 `HttpAuthChallenge` 到 `URLAuthenticationChallenge`
- 更新 `basicConstraints`, `subjectKeyIdentifier`, `authorityKeyIdentifier`, `certificatePolicies`, `cRLDistributionPoints`, `authorityInfoAccess` 属性 类型 的 `X509Certificate`
- 更新 "WebView.storyboard" 用于 InAppBrowser iOS representation
- 重命名 `ShouldOverrideUrlLoadingAction` 类 到 `NavigationActionPolicy`
- 重命名 `ProtectionSpace` 类 到 `URLProtectionSpace`
- 重命名 `ProtectionSpaceHttpAuthCredentials` 到 `URLProtectionSpaceHttpAuthCredentials`
- 重命名 `CreateWindowRequest` 类 到 `CreateWindowAction`
- 重命名 `initialUrl` 到 `initialUrlRequest` WebView 属性 和 made it 的 类型 `URLRequest`
- 重命名 `toolbarTop` InAppBrowser 跨平台 选项 到 `hideToolbarTop`
- 重命名 `toolbarBottom` InAppBrowser iOS 特定 选项 到 `hideToolbarBottom`
- 移除 `debuggingEnabled` WebView 选项; 在 Android you should use 现在 the `AndroidInAppWebViewController.setWebContentsDebuggingEnabled(bool debuggingEnabled)` static 方法; 在 iOS, debugging 是 always 启用
- 移除 `androidOnRequestFocus` 事件 because it 是 never called
- 移除 `initialHeaders` WebView 属性. Use `URLRequest.headers` 属性
- 移除 `headers` 参数 从 `loadFile` WebView 方法
- 移除 `headers` 参数 从 `openFile` InAppBrowser 方法
- 移除 `headers` 参数 从 `loadUrl` WebView 方法, renamed the `url` 参数 到 `urlRequest` 和 made it 的 类型 `URLRequest`
- 移除 `headers` 参数 从 `openFile` InAppBrowser 方法
- 移除 `headers` 参数 从 `openUrl` InAppBrowser 方法, renamed the `url` 参数 到 `urlRequest` 和 made it 的 类型 `URLRequest`
- 移除 `fallback` 参数 从 `ChromeSafariBrowser` constructor. Check 用于 availability 的 `ChromeSafariBrowser` if you want show one 或 the other.
- 移除 `scheme` 参数 从 `onLoadResourceCustomScheme` WebView 事件. Use the `Uri url` 参数 现在.
- 移除 `ShouldOverrideUrlLoadingRequest` 类 和 replaced 使用 `NavigationAction`
- 更改 `zoomBy` WebView 方法 signature
- 更改 类型 的 `urlFile` 参数 的 `injectCSSFileFromUrl` WebView 方法 到 `Uri`
- 更改 类型 的 `urlFile` 参数 的 `injectJavascriptFileFromUrl` WebView 方法 到 `Uri`
- 更改 return 类型 的 `getOriginalUrl` Android 特定 WebView 方法 到 `Uri`
- 更改 return 类型 的 `getSafeBrowsingPrivacyPolicyUrl` Android 特定 WebView 方法 到 `Uri`
- 更改 类型 的 `url` 参数 的 `onLoadStart`, `onLoadStop`, `onLoadError`, `onLoadHttpError`, `onLoadResourceCustomScheme`, `onUpdateVisitedHistory`, `onPrint`, `onPageCommitVisible`, `androidOnSafeBrowsingHit`, `androidOnRenderProcessUnresponsive`, `androidOnRenderProcessResponsive`, `androidOnFormResubmission`, `androidOnReceivedTouchIconUrl` WebView 事件 到 `Uri`
- 更改 类型 的 `baseUrl` 和 `androidHistoryUrl` 参数 的 `loadData` WebView 方法 和 `openData` InAppBrowser 方法
- 更改 `openUrl` InAppBrowser 方法 到 `openUrlRequest`
- 更改 类型 的 `url` 参数 的 `openWithSystemBrowser` InAppBrowser 方法 到 `Uri`
- 更改 所有 InAppBrowser color 选项 类型 从 `String` 到 `Color`
- 更改 所有 ChromeSafariBrowser color 选项 类型 从 `String` 到 `Color`
- 更新 属性 的 `ShouldOverrideUrlLoadingRequest`, `ServerTrustChallenge` 和 `ClientCertChallenge` 类
- 更改 类型 的 `url` 属性 到 `Uri` 用于 `JsAlertRequest`, `JsAlertConfirm`, `JsPromptRequest` 类

## 4.0.0+4

- 回退 calling `handler.post` 在 Android 当 a WebView 是 created
- 修复 iOS extra bottom padding 当 opening the keyboard
- 修复 "Build 用于 web 不 working – The integer literal 9223372036854775807 can't be represented exactly 在 JavaScript" [#429](https://github.com/pichillilorenzo/flutter_inappwebview/issues/429)
- 修复 iOS userContentController didReceive WKScriptMessage 事件 当 using a WebView created 使用 a `windowId`

## 4.0.0

- 更新 `onCreateWindow`, `onJsAlert`, `onJsConfirm`, `onJsPrompt` webview 事件
- 新增 `onCloseWindow`, `onTitleChanged`, `onWindowFocus`, `onWindowBlur` webview 事件
- 新增 `androidOnRequestFocus`, `androidOnReceivedIcon`, `androidOnReceivedTouchIconUrl`, `androidOnJsBeforeUnload`, `androidOnReceivedLoginRequest` Android 特定 webview 事件
- 新增 `disableDefaultErrorPage` Android 特定 webview 选项
- 新增 `isAvailable` ChromeSafariBrowser static 方法
- 修复 "SFSafariViewController doesn't open like a native iOS modal" [#403](https://github.com/pichillilorenzo/flutter_inappwebview/issues/403)

### 破坏性变更

- 更新 `onCreateWindow`, `onJsAlert`, `onJsConfirm`, `onJsPrompt` webview 事件
- 重命名 `OnCreateWindowRequest` 类 到 `CreateWindowRequest`

## 3.4.0+2

- 回退 default `InAppWebView.gestureRecognizers` 值 到 null 在 Android

## 3.4.0+1

- 更新 README.md
- 更新 缺失的 文档
- 修复 pub.dev Health suggestions 和 Analysis suggestions

## 3.4.0

- 新增 `requestFocusNodeHref`, `requestImageRef`, `getMetaTags`, `getMetaThemeColor`, `getScrollX`, `getScrollY`, `getCertificate` webview 方法
- 新增 `WebStorage`, `LocalStorage` 和 `SessionStorage` 类 到 manage `window.localStorage` 和 `window.sessionStorage` JavaScript [Web Storage API](https://developer.mozilla.org/en-US/文档/Web/API/Web_Storage_API)
- 新增 `supportZoom` webview 选项 also 在 iOS
- 新增 `HttpOnly`, `SameSite` cookie 选项
- 更新 `Cookie` 类
- 新增 `animated` 选项 到 `scrollTo` 和 `scrollBy` webview 方法
- 新增 错误 和 message 到 the `ServerTrustChallenge` 类 用于 iOS (类 used 由 the `onReceivedServerTrustAuthRequest` 事件)
- 新增 `contentInsetAdjustmentBehavior` webview iOS 特定 选项
- 新增 `copy` 方法 用于 webview 选项 类
- 新增 `SslCertificate` 类 和 `X509Certificate` 类 和 parser
- 新增 `值` 属性 用于 所有 the custom Enums
- 更新 Android workaround 到 hide the Keyboard 当 the user click outside 在 something 不 focusable such as input 或 a textarea.
- 修复 `zoomBy`, `setOptions` webview 方法 在 Android
- 修复 `databaseEnabled` android webview 选项 default 值 到 `true`
- 修复 `verticalScrollBarEnabled` 和 `horizontalScrollBarEnabled` 在 Android
- 修复 错误 caused 由 `pauseTimers` 在 iOS 当 the WebView 有 been disposed
- 修复 `ignoresViewportScaleLimits`, `dataDetectorTypes`, `suppressesIncrementalRendering`, `selectionGranularity` iOS 特定 选项 当 used 在 `initialOptions`
- 修复 `getFavicons` 方法
- 修复 `HttpAuthCredentialDatabase.removeHttpAuthCredential` 在 Android
- 修复 一些 cases 其中 `takeScreenshot` was 不 working 在 Android
- 修复 `After upgrade 到 Android embedding V2, still get Shared.activity 是 null / NullPointerException 在 android.content.Context.getResources()` [#390](https://github.com/pichillilorenzo/flutter_inappwebview/issues/390)

### 破坏性变更

- `evaluateJavascript` webview 方法 现在 returns `null` 在 iOS if the evaluated JavaScript source returns `null`
- `getHtml` webview 方法 现在 could return `null` if it was unable 到 get it.
- 移动 `supportZoom` webview 选项 到 跨平台
- `builtInZoomControls` android webview 选项 changed default 值 到 `true`
- 更新 `ServerTrustChallenge` 类 used 由 the `onReceivedServerTrustAuthRequest` 事件
- The 方法 `getOptions` could return null 现在
- 更新 `HttpAuthCredentialDatabase.getAllAuthCredentials` 方法 return 类型

## 3.3.0+3

- 更新 Android build.gradle 版本 和 一些 androidx 属性
- 修复 `Multiple sessions` [#371](https://github.com/pichillilorenzo/flutter_inappwebview/issues/371)
- 修复 `incognito mode 是 broken swift` [#320](https://github.com/pichillilorenzo/flutter_inappwebview/issues/320)

## 3.3.0

- 更新 API 文档
- 更新 Android context menu workaround
- Calling `onCreateContextMenu` 事件 在 iOS also 当 the context menu 是 disabled 在 order 到 有 the same effect as Android
- 新增 `选项` 属性 到 `ContextMenu` 类 和 created `ContextMenuOptions` 类
- 新增 Android keyboard workaround 到 hide the keyboard 当 clicking other HTML elements, losing the focus 在 the previous input
- 新增 `onEnterFullscreen`, `onExitFullscreen` webview 事件 [#275](https://github.com/pichillilorenzo/flutter_inappwebview/issues/275)
- 新增 Android 支持 到 use camera 在 HTML inputs that requires it, such as `<input 类型="file" accept="image/*" capture>` [#353](https://github.com/pichillilorenzo/flutter_inappwebview/issues/353)
- 新增 `overScrollMode`, `networkAvailable`, `scrollBarStyle`, `verticalScrollbarPosition`, `scrollBarDefaultDelayBeforeFade`, `scrollbarFadingEnabled`, `scrollBarFadeDuration`, `rendererPriorityPolicy`, `useShouldInterceptRequest`, `useOnRenderProcessGone` webview 选项 在 Android
- 新增 `pageDown`, `pageUp`, `saveWebArchive`, `zoomIn`, `zoomOut`, `clearHistory` webview 方法 在 Android
- 新增 `getCurrentWebViewPackage` static webview 方法 在 Android
- 新增 `setContextMenu`, `clearFocus` 方法 到 webview controller
- 新增 `onPageCommitVisible` webview 事件
- 新增 `androidShouldInterceptRequest`, `androidOnRenderProcessUnresponsive`, `androidOnRenderProcessResponsive`, `androidOnRenderProcessGone`, `androidOnFormResubmission`, `androidOnScaleChanged` Android 事件
- 新增 `toString()` 方法 到 various 类 在 order 到 有 a better output instead 的 simply `Instance 的 ...`
- 修复 `Print preview 是 不 working? java.lang.IllegalStateException: Can print only 从 an activity` [#128](https://github.com/pichillilorenzo/flutter_inappwebview/issues/128)
- 修复 `onJsAlert`, `onJsConfirm`, `onJsPrompt` 用于 `InAppBrowser` 在 Android
- 修复 `onActivityResult` 用于 `InAppBrowser` 在 Android
- 修复 `InAppBrowser.openWithSystemBrowser 崩溃 在 iOS` [#358](https://github.com/pichillilorenzo/flutter_inappwebview/issues/358)
- 修复 `Attempt 到 invoke virtual 方法 'java.util.Set java.util.HashMap.entrySet()' 在 a null object reference` [#367](https://github.com/pichillilorenzo/flutter_inappwebview/issues/367)
- 修复 缺失的 `allowsAirPlayForMediaPlayback` iOS webview 选项 实现

### 破坏性变更

- Android `clearClientCertPreferences`, `getSafeBrowsingPrivacyPolicyUrl`, `setSafeBrowsingWhitelist` webview 方法 是 static 现在
- 移除 iOS 事件 `onDidCommit`; it 有 been renamed 到 `onPageCommitVisible` 和 made 跨平台
- `contextMenu` webview 属性 是 `final` 现在

## 3.2.0

- 新增 `ContextMenu` 和 `ContextMenuItem` 类 [#235](https://github.com/pichillilorenzo/flutter_inappwebview/issues/235)
- 新增 `onCreateContextMenu`, `onHideContextMenu`, `onContextMenuActionItemClicked` context menu 事件
- 新增 `contextMenu` 到 WebView
- 新增 `disableContextMenu` WebView 选项
- 新增 `getSelectedText`, `getHitTestResult` 方法 到 WebView Controller
- 修复 `Confirmation dialog (onbeforeunload) displayed after popped 从 webview page` [#337](https://github.com/pichillilorenzo/flutter_inappwebview/issues/337)
- 修复 `CookieManager.setCookie` `expiresDate` 选项
- 修复 `Scrolling 不 smooth 在 iOS` [#341](https://github.com/pichillilorenzo/flutter_inappwebview/issues/341)

### 破坏性变更

- 重命名 `LongPressHitTestResult` 到 `InAppWebViewHitTestResult`.
- 重命名 `LongPressHitTestResultType` 到 `InAppWebViewHitTestResultType`.

## 3.1.0

- 新增 `HeadlessInAppWebView` 类 到 be able 到 use WebView 在 headless mode
- 新增 `close`, `addMenuItem`, `addMenuItems` 方法 到 `ChromeSafariBrowser`
- 新增 `ChromeSafariBrowserMenuItem` 类 在 order 到 create custom menu item 用于 `ChromeSafariBrowser`
- 修复 `InAppWebView.channel` null 当 used 由 `InAppBrowserActivity` 在 android
- 修复 iOS presentationStyle affecting only dismiss animation [#305](https://github.com/pichillilorenzo/flutter_inappwebview/issues/305)

### 破坏性变更

- 重命名 `InAppWebViewWidgetOptions` 到 `InAppWebViewGroupOptions`.

## 3.0.0

- 新增 `Promise` JavaScript [polyfill](https://github.com/tildeio/rsvp.js) 用于 webviews that doesn't 支持 it 用于 `window.flutter_inappwebview.callHandler`
- 新增 `getDefaultUserAgent` static 方法 到 `InAppWebViewController`
- 新增 `onUpdateVisitedHistory`, `onPrint`, `onLongPressHitTestResult` 事件
- 新增 `androidOnGeolocationPermissionsHidePrompt` 事件 用于 Android webview
- 新增 `iosOnWebContentProcessDidTerminate`, `iosOnDidCommit`, `iosOnDidReceiveServerRedirectForProvisionalNavigation` 事件 用于 iOS webview
- 新增 `supportMultipleWindows` webview 选项 用于 Android
- 新增 `regexToCancelSubFramesLoading` webview 选项 用于 Android 到 cancel subframe requests 在 `shouldOverrideUrlLoading` 事件 based 在 a Regular Expression
- 新增 `getContentHeight`, `zoomBy`, `printCurrentPage`, `getScale` 方法
- 新增 `getOriginalUrl` webview 方法 用于 Android
- 新增 `reloadFromOrigin`, `hasOnlySecureContent` webview 方法 用于 iOS
- 新增 `automaticallyAdjustsScrollIndicatorInsets`, `accessibilityIgnoresInvertColors`, `decelerationRate`, `alwaysBounceVertical`, `alwaysBounceHorizontal`, `scrollsToTop`, `isPagingEnabled`, `maximumZoomScale`, `minimumZoomScale` webview 选项 用于 iOS
- 新增 `WebStorageManager` 类 which manages the web storage used 由 WebView instances
- 新增 `packageName` [#229](https://github.com/pichillilorenzo/flutter_inappwebview/issues/229) 和 `keepAliveEnabled` ChromeCustomTab 选项 用于 Android
- 更新 用于 Flutter 1.12 新 Java Embedding API (Android)
- 更新 `clearCache` 用于 Android
- 更新 default 值 用于 `domStorageEnabled` 和 `databaseEnabled` 选项 到 `true` 用于 Android
- 合并“Fixes null 错误 当 calling getOptions 用于 InAppBrowser 类” [#214](https://github.com/pichillilorenzo/flutter_inappwebview/pull/214) (感谢 [panndoraBoo](https://github.com/panndoraBoo))
- 合并“Fixes 崩溃 onConsoleMessage iOS forced unwrapping” [#228](https://github.com/pichillilorenzo/flutter_inappwebview/pull/228) (感谢 [tokonu](https://github.com/tokonu))
- 合并“Fix HTTPCookie.secure” [#311](https://github.com/pichillilorenzo/flutter_inappwebview/pull/311) (感谢 [xtyxtyx](https://github.com/xtyxtyx))
- 合并“Fix config 选项 用于 Android release builds” [#295](https://github.com/pichillilorenzo/flutter_inappwebview/pull/295) (感谢 [wwwdata](https://github.com/wwwdata))
- 合并“fix scrollbar 在 iOS always show if 不 disable scroll” [#256](https://github.com/pichillilorenzo/flutter_inappwebview/pull/256) (感谢 [phamnhuvu-dev](https://github.com/phamnhuvu-dev))
- 合并“Fix 崩溃 在 nil/invalid URL (iOS)” [#262](https://github.com/pichillilorenzo/flutter_inappwebview/pull/262) (感谢 [AlexVincent525](https://github.com/AlexVincent525))
- 合并“Fix 崩溃 当 `prompt` was called 在 Android Q.” [#262](https://github.com/pichillilorenzo/flutter_inappwebview/pull/263) (感谢 [AlexVincent525](https://github.com/AlexVincent525))
- 修复 用于 Android 和 iOS `InAppBrowser` 用于 一些 controller 方法 不 exposed.
- 修复 "App Crashes after clicking 在 dropdown (Using inappwebview)" [#182](https://github.com/pichillilorenzo/flutter_inappwebview/issues/182)
- 修复 "webview can 不 be released 当 在 ios" [#225](https://github.com/pichillilorenzo/flutter_inappwebview/issues/225). Now the iOS WebView 是 released 从 memory 当 it 是 disposed 从 Flutter.
- 修复 "Setting 的 presentationStyle 不 working 在 iOS" [#213](https://github.com/pichillilorenzo/flutter_inappwebview/issues/213)
- 修复 "Android zoom issues" [#270](https://github.com/pichillilorenzo/flutter_inappwebview/issues/270)

### 破坏性变更

- 更新 `shouldOverrideUrlLoading` 事件:
  - the `url` parameter has been moved inside an instance of `ShouldOverrideUrlLoadingRequest` class
  - it has a return type `ShouldOverrideUrlLoadingAction` to allow or cancel navigation instead of cancel every time the request
- 重命名 `onTargetBlank` 到 `onCreateWindow`
- 删除 `useOnTargetBlank` webview 选项
- Making 方法 可用 only 用于 the specific platform more explicit: moved 所有 the webview's controller 方法 用于 Android inside `controller.android` 和 所有 the webview's controller 方法 用于 iOS inside `controller.ios`
- Making 事件 可用 only 用于 the specific platform more explicit:
  - Renamed `onSafeBrowsingHit` to `androidOnSafeBrowsingHit`
  - Renamed `onGeolocationPermissionsShowPrompt` to `androidOnGeolocationPermissionsShowPrompt`
  - Renamed `onPermissionRequest` to `androidOnPermissionRequest`
- 更新 属性 names 用于 `InAppWebViewWidgetOptions`, `InAppBrowserClassOptions` 和 `ChromeSafariBrowserClassOptions` 类
- 重命名 和 updated `onNavigationStateChange` 到 `onUpdateVisitedHistory`
- 重命名 所有 iOS 和 Android webview 选项 类
- 重命名 Chrome Custom Tab `addShareButton` 选项 到 `addDefaultShareMenuItem`
- 重命名 ChromeSafariBrowser `onLoaded` 到 `onCompletedInitialLoad`

## 2.1.0+1

- 修复 文档

## 2.1.0

- 新增 `pause` 和 `resume` 方法 用于 Android.
- 新增 `pauseTimers` 和 `resumeTimers` 方法.
- 新增 新 `historyUrl` optional 参数 用于 `loadData` 和 `openData` 方法 和 `InAppWebViewInitialData` 类. It 是 used only 在 Android.
- 修复 "problems 使用 onReceivedHttpAuthRequest 当 initialData 是 used" [#201](https://github.com/pichillilorenzo/flutter_inappwebview/issues/201)
- 修复 "System ui (status bar 和 navigation bar) doesn't hide automatically" [#202](https://github.com/pichillilorenzo/flutter_inappwebview/issues/202)

## 2.0.1+1

- 修复 错误 "java.lang.ClassCastException: $Proxy1 cannot be cast 到 android.view.WindowManagerImpl" 在 Android 当 using native alert dialogs

## 2.0.1

- 新增 `onPermissionRequest` 事件. This 事件 是 fired 当 the webview 是 requesting permission 到 access the specified resources 和 the permission currently isn't granted 或 denied (仅 Android 可用).

## 2.0.0

- 合并“Avoid null pointer exception after webview 是 disposed” [#116](https://github.com/pichillilorenzo/flutter_inappwebview/pull/116) (感谢 [robsonfingo](https://github.com/robsonfingo))
- 合并“Remove async call 在 close” [#119](https://github.com/pichillilorenzo/flutter_inappwebview/pull/119) (感谢 [benfingo](https://github.com/benfingo))
- 合并“Android takeScreenshot does 不 work properly.” [#122](https://github.com/pichillilorenzo/flutter_inappwebview/pull/122) (感谢 [PauloMelo](https://github.com/PauloMelo))
- 合并“Resolving gradle 错误.” [#144](https://github.com/pichillilorenzo/flutter_inappwebview/pull/144) (感谢 [Klingens13](https://github.com/Klingens13))
- 合并“Create issue 和 pull request templates” [#150](https://github.com/pichillilorenzo/flutter_inappwebview/pull/150) (感谢 [deandreamatias](https://github.com/deandreamatias))
- 合并“Fix abstract 方法 错误 && swift 版本 错误” [#155](https://github.com/pichillilorenzo/flutter_inappwebview/pull/155) (感谢 [AlexVincent525](https://github.com/AlexVincent525))
- 合并“migrating 到 swift 5.0” [#162](https://github.com/pichillilorenzo/flutter_inappwebview/pull/162) (感谢 [fattiger00](https://github.com/fattiger00))
- 合并“Update readme example” [#178](https://github.com/pichillilorenzo/flutter_inappwebview/pull/178) (感谢 [SebastienBtr](https://github.com/SebastienBtr))
- 合并“handle choose file 回调 在 android” [#183](https://github.com/pichillilorenzo/flutter_inappwebview/pull/183) (感谢 [crazecoder](https://github.com/crazecoder))
- 合并“add initialScale 在 android” [#186](https://github.com/pichillilorenzo/flutter_inappwebview/pull/186) (感谢 [crazecoder](https://github.com/crazecoder))
- 新增 `horizontalScrollBarEnabled` 和 `verticalScrollBarEnabled` 选项 到 enable/disable the corresponding scrollbar 的 the WebView [#165](https://github.com/pichillilorenzo/flutter_inappwebview/issues/165)
- 新增 `onDownloadStart` 事件 和 `useOnDownloadStart` 选项: 事件 fires 当 the WebView recognizes 和 starts a downloadable file.
- 新增 `onLoadResourceCustomScheme` 事件 和 `resourceCustomSchemes` 选项 到 set custom schemes that WebView must handle 到 load resources
- 新增 `onTargetBlank` 事件 和 `useOnTargetBlank` 选项 到 manage links 使用 `target="_blank"`
- 新增 `ContentBlocker`, `ContentBlockerTrigger` 和 `ContentBlockerAction` 类 和 the `contentBlockers` 选项 that allows 到 define a set 的 rules 到 use 到 block content 在 the WebView
- 新增 新 WebView 选项: `minimumFontSize`, `debuggingEnabled`, `preferredContentMode`, `applicationNameForUserAgent`, `incognito`, `cacheEnabled`, `disableVerticalScroll`, `disableHorizontalScroll`
- 新增 新 Android WebView 选项: `allowContentAccess`, `allowFileAccess`, `allowFileAccessFromFileURLs`, `allowUniversalAccessFromFileURLs`, `appCachePath`, `blockNetworkImage`, `blockNetworkLoads`, `cacheMode`, `cursiveFontFamily`, `defaultFixedFontSize`, `defaultFontSize`, `defaultTextEncodingName`, `disabledActionModeMenuItems`, `fantasyFontFamily`, `fixedFontFamily`, `forceDark`, `geolocationEnabled`, `layoutAlgorithm`, `loadWithOverviewMode`, `loadsImagesAutomatically`, `minimumLogicalFontSize`, `needInitialFocus`, `offscreenPreRaster`, `sansSerifFontFamily`, `serifFontFamily`, `standardFontFamily`, `saveFormData`, `thirdPartyCookiesEnabled`, `hardwareAcceleration`
- 新增 新 iOS WebView 选项: `isFraudulentWebsiteWarningEnabled`, `selectionGranularity`, `dataDetectorTypes`, `sharedCookiesEnabled`
- 新增 `onGeolocationPermissionsShowPrompt` 事件 和 `GeolocationPermissionShowPromptResponse` 类 (仅 Android 可用)
- 新增 `startSafeBrowsing`, `setSafeBrowsingWhitelist` 和 `getSafeBrowsingPrivacyPolicyUrl` 方法 (仅 Android 可用)
- 新增 `clearSslPreferences` 和 `clearClientCertPreferences` 方法 (仅 Android 可用)
- 新增 `onSafeBrowsingHit` 事件 (仅 Android 可用)
- 新增 `onJsAlert`, `onJsConfirm` 和 `onJsPrompt` 事件 到 manage JavaScript popup dialogs
- 新增 `onReceivedHttpAuthRequest` 事件
- 新增 `clearCache`, `scrollTo`, `scrollBy`, `getHtml`, `injectJavascriptFileFromAsset` 和 `injectCSSFileFromAsset` 方法 方法
- 新增 `HttpAuthCredentialDatabase` 类
- 新增 `onReceivedServerTrustAuthRequest` 和 `onReceivedClientCertRequest` 事件 到 manage SSL requests
- 新增 `onFindResultReceived` 事件, `findAllAsync`, `findNext` 和 `clearMatches` 方法
- 新增 `shouldInterceptAjaxRequest`, `onAjaxReadyStateChange`, `onAjaxProgress` 和 `shouldInterceptFetchRequest` 事件 使用 `useShouldInterceptAjaxRequest` 和 `useShouldInterceptFetchRequest` webview 选项
- 新增 `onNavigationStateChange` 和 `onLoadHttpError` 事件
- Fun: added `getTRexRunnerHtml` 和 `getTRexRunnerCss` 方法 到 get html (使用 JavaScript) 和 css 到 recreate the Chromium's t-rex runner game

### 破坏性变更
- 删除 `WebResourceRequest` 类
- 更新 `WebResourceResponse` 类
- 更新 `ConsoleMessage` 类
- 更新 `ConsoleMessageLevel` 类
- 更新 `onLoadResource` 事件
- 更新 `CookieManager` 类
- WebView 选项 是 现在 可用 使用 the 新 corresponding 类: `InAppWebViewOptions`, `AndroidInAppWebViewOptions`, `iOSInAppWebViewOptions`, `InAppBrowserOptions`, `AndroidInAppBrowserOptions`, `iOSInAppBrowserOptions`, `AndroidChromeCustomTabsOptions` 和 `iOSSafariOptions`
- 重命名 `getFavicon` 到 `getFavicons`, 现在 it 现在返回 list 的 所有 favicons (`List<Favicon>`) found
- 重命名 `injectScriptFile` 到 `injectJavascriptFileFromUrl`
- 重命名 `injectScriptCode` 到 `evaluateJavascript`
- 重命名 `injectStyleCode` 到 `injectCSSCode`
- 重命名 `injectStyleFile` 到 `injectCSSFileFromUrl`

## 1.2.2

- 合并“added a shared WKProcessPool 用于 webview instances” [#198](https://github.com/pichillilorenzo/flutter_inappwebview/pull/198) (感谢 [robertcnst](https://github.com/robertcnst))
- 修复 iOS setCookie.

## 1.2.1

- 合并“Add 新 选项 到 control the contentMode 在 Android platform” [#101](https://github.com/pichillilorenzo/flutter_inappwebview/pull/101) (感谢 [DreamBuddy](https://github.com/DreamBuddy))
- 合并“Fix 崩溃 在 xcode 10.2” [#107](https://github.com/pichillilorenzo/flutter_inappwebview/pull/107) (感谢 [robsonfingo](https://github.com/robsonfingo))
- 合并“Remove headers_build_phase 从 example's Podfile” [#108](https://github.com/pichillilorenzo/flutter_inappwebview/pull/108) (感谢 [robsonfingo](https://github.com/robsonfingo))
- 修复 "Make html5 video fullscreen" 用于 Android [#43](https://github.com/pichillilorenzo/flutter_inappwebview/issues/43)
- 修复 "AllowsInlineMediaPlayback 不 working" 用于 iOS [#73](https://github.com/pichillilorenzo/flutter_inappwebview/issues/73)

## 1.2.0

- 合并“Adds a transparentBackground 选项 用于 iOS 和 Android” [#86](https://github.com/pichillilorenzo/flutter_inappwebview/pull/86) (感谢 [matthewlloyd](https://github.com/matthewlloyd))
- 合并“The 'open' 方法 requires an 选项 dictionary” [#87](https://github.com/pichillilorenzo/flutter_inappwebview/pull/87) (感谢 [matthewlloyd](https://github.com/matthewlloyd))
- 合并“iOS: Call setNeedsLayout() 在 scrollViewDidScroll()” [#88](https://github.com/pichillilorenzo/flutter_inappwebview/pull/88) (感谢 [matthewlloyd](https://github.com/matthewlloyd))
- 修复 "java.lang.RuntimeException: Methods marked 使用 @UiThread must be executed 在 the main thread." [#98](https://github.com/pichillilorenzo/flutter_inappwebview/issues/98) (感谢 [DreamBuddy](https://github.com/DreamBuddy))
- 修复 "app force close/崩溃 当 enabling zoom 和 repeatedly changing orientation 和 zoomin zoomout" [#93](https://github.com/pichillilorenzo/flutter_inappwebview/issues/93)
- 新增 `displayZoomControls` webview 选项 用于 Android
- 修复 "Compatibility 使用 other plugins" [#80](https://github.com/pichillilorenzo/flutter_inappwebview/issues/80)

## 1.1.3

- 合并“Add null checks around calls 到 InAppWebView 回调” [#85](https://github.com/pichillilorenzo/flutter_inappwebview/pull/85) (感谢 [matthewlloyd](https://github.com/matthewlloyd))

## 1.1.2

- 修复 InAppBrowser 崩溃 the app 当 i change the page "Lost connection" [#74](https://github.com/pichillilorenzo/flutter_inappwebview/issues/74)
- 修复 JavaScript `...args` 参数 的 `window.flutter_inappwebview.callHandler()`
- Merge Enable setTextZoom function 的 Android WebViewSetting [#81](https://github.com/pichillilorenzo/flutter_inappwebview/pull/81) (感谢 [YouCii](https://github.com/YouCii))
- Merge bug fix 用于 android build: Android 依赖 'androidx.core:core' 有 different 版本 用于 the compile (1.0.0) 和 runtime (1.0.1) classpath [#83](https://github.com/pichillilorenzo/flutter_inappwebview/pull/83) (感谢 [cinos1](https://github.com/cinos1))

## 1.1.1

- 修复 README.md 和 `addJavaScriptHandler` 方法 文档

## 1.1.0

- 关于 `addJavaScriptHandler` 和 `removeJavaScriptHandler` 方法.
- `addJavaScriptHandler` 方法 can return data 到 JavaScript using `Promise` [#46](https://github.com/pichillilorenzo/flutter_inappwebview/issues/46)
- 新增 `flutterInAppBrowserPlatformReady` JavaScript 事件 到 wait until the platform 是 ready [#64](https://github.com/pichillilorenzo/flutter_inappwebview/issues/64)

## 1.0.1

- 修复 Unable 到 load initialFile 在 iOS #56
- 一些代码清理

## 1.0.0

破坏性变更：
- 修复 [Flutter AndroidX compatibility](https://flutter.dev/文档/development/packages-和-plugins/androidx-compatibility), the latest 版本 that doesn't use `AndroidX` 是 `0.6.0` (感谢 [juicycleff](https://github.com/juicycleff)).

## 0.6.0

- 新增 支持 用于 **iOS** inline native WebView integrated 在 the flutter widget tree
- 更新 example folder (感谢 [marquesinijatinha](https://github.com/marquesinijatinha))
- 修复 bug 其中 passing null 到 expiresDate failed (感谢 [Sense545](https://github.com/Sense545))
- 修复 iOS 错误: encode resourceURL (感谢 [igtm](https://github.com/igtm))
- 修复 iOS 错误: Double 值 cannot be converted 到 Int because the result would be greater than Int.max 在 32-bit devices (感谢 [huzhiren](https://github.com/huzhiren))
- 修复 iOS 错误: problem 在 ChromeSafariBrowser (感谢 [marquesinijatinha](https://github.com/marquesinijatinha))
- 修复 Android build 错误 caused 由 gradle 和 build gradle versions (感谢 [tje3d](https://github.com/tje3d))
- 更新 `uuid` 依赖 到 `^2.0.0`

## 0.5.51

- 更新 `pubspec.yaml`
- 更新 `README.md`

## 0.5.5

- 新增 `getUrl` 方法 用于 the `InAppWebViewController` 类
- 新增 `getTitle` 方法 用于 the `InAppWebViewController` 类
- 新增 `getProgress` 方法 用于 the `InAppWebViewController` 类
- 新增 `getFavicon` 方法 用于 the `InAppWebViewController` 类
- 新增 `onScrollChanged` 事件 用于 the `InAppWebViewController` 和 `InAppBrowser` 类
- 新增 `onBrowserCreated` 事件 用于 the `InAppBrowser` 类
- 新增 `openData` 方法 用于 the `InAppBrowser` 类
- 新增 `initialData` 属性 用于 the `InAppWebView` widget

## 0.5.4

- 新增 `WebHistory` 和 `WebHistoryItem` 类
- 新增 `getCopyBackForwardList`, `goBackOrForward`, `canGoBackOrForward` 和 `goTo` 方法 用于 the `InAppWebViewController` 类

## 0.5.3

- 新增 `CookieManager` 类

## 0.5.2

- 修复 一些 缺失的 `result.success()` 在 Android 和 iOS
- 新增 `postUrl()` 方法 用于 the `InAppWebViewController` 类
- 新增 `loadData()` 方法 用于 the `InAppWebViewController` 类

## 0.5.1

- 更新 README.md

## 0.5.0

- 新增 初始 支持 用于 Inline WebViews using the `InAppWebView` widget
- 新增 `InAppBrowser.openFile()` 方法
- 新增 `InAppBrowser.onProgressChanged()` 事件
- moved `InAppBrowser` WebView related functions 在 the `InAppWebViewController` 类
- 新增 `InAppLocalhostServer` 类
- 新增 `InAppWebView.canGoBack()` 和 `InAppWebView.canGoForward()` 方法
- 移除 `openWithSystemBrowser` 和 `isLocalFile` 选项. Now use the corresponding 方法
- code refactoring

## 0.4.1

- 新增 `InAppBrowser.takeScreenshot()`
- 新增 `InAppBrowser.setOptions()`
- 新增 `InAppBrowser.getOptions()`

## 0.4.0

- 移除 `target` 参数 到 `InAppBrowser.open()` 方法. To open the url 在 the system browser, use the `openWithSystemBrowser: true` 选项
- fixes 用于 the `_ChannelManager` private 类
- 修复 `EXC_BAD_INSTRUCTION` onLoadStart 在 Swift
- 新增 `openWithSystemBrowser` 和 `isLocalFile` 选项
- 新增 `InAppBrowser.openWithSystemBrowser` 方法
- 新增 `InAppBrowser.openOnLocalhost` 方法
- 新增 `InAppBrowser.loadFile` 方法
- 新增 `InAppBrowser.isOpened` 方法

## 0.3.2

- 修复 WebView.storyboard path 用于 iOS

## 0.3.1

- 修复 README.md example

## 0.3.0

- 修复 WebView.storyboard 到 deployment target 8.0
- 新增 `InAppBrowser.onLoadResource()` 方法. The 事件 fires 当 the InAppBrowser webview loads a resource
- 新增 `InAppBrowser.addJavaScriptHandler()` 和 `InAppBrowser.removeJavaScriptHandler()` 方法 到 add/remove JavaScript message handlers
- 移除 `keyboardDisplayRequiresUserAction` 从 iOS 可用 选项
- 现在 the `url` 参数 的 `InAppBrowser.open()` 是 optional. The default 值 是 `about:blank`

## 0.2.1

- 新增 `InAppBrowser.onConsoleMessage()` 方法 到 manage console messages
- 修复 `InAppBrowser.injectScriptCode()` 方法 当 there 是 不 a return 值

## 0.2.0

- 新增 支持 的 Chrome CustomTabs 用于 Android
- 新增 支持 的 SFSafariViewController 用于 iOS
- 新增 the ability 到 create multiple instances 的 browsers

## 0.1.1

- updated/added 新 方法
- 更新 UI 的 android/iOS 在-app browser
- 代码清理
- 新增 新 选项 当 opening the 在-app browser

## 0.0.1

初始发布。
