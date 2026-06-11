# jidoujisho Anki 模板

### 自 0.26 起，所有导出的卡片都会使用同一个 jidoujisho 模板。此页面已经过时，仅作为文档保留。

本文记录 Anki 模板中使用的 HTML 和 CSS，供已经有旧模板并希望更新的用户参考。**共有三种模板**：一种用于视频播放，一种用于在应用内使用制卡器，一种用于把阅读文本分享到应用。

* **jidoujisho Anki 卡片按顺序有六个字段：** Image、Audio、Sentence、Word、Meaning、Reading。
* 你可以在 AnkiDroid 中通过 **编辑任意由 jidoujisho 导出的卡片** 来修改模板。
* 在 AnkiDroid 编辑器底部选择卡片类型：`jidoujisho Default`、`jidoujisho (Creator) Default` 或 `jidoujisho (Reader) Default`。
* 这会进入模板编辑器，你可以 **用下方内容替换原有文本**。

<p align="center" style="margin:0">
<img src="https://i.postimg.cc/pT655HZW/1.jpg" height="400"/>
<img src="https://i.postimg.cc/5yQYwR7w/2.jpg" height="400"/>
<img src="https://i.postimg.cc/gr9w4HQ1/3.jpg" height="400"/>
</p>

# CSS 模板

播放器、制卡器和阅读器模板使用相同的 CSS。唯一差异是 Creator 默认最大图片高度更高，因为它面向开箱即用的正面带图卡片，例如漫画阅读或快速词汇卡。

* **播放器和阅读器** 模板默认最大图片高度为 `250px`。
* **制卡器模板** 默认最大图片高度为 `400px`。

```css
p {
    margin: 0px
}

h2 {
    margin: 0px
}

small {
    margin: 0px
}

.card {
  font-family: arial;
  font-size: 20px;
  white-space: pre-line;
  text-align: center;
  color: black;
  background-color: white;
}

#sentence {
    font-size: 30px
}

.image img {
  position: static;
  height: auto;
  width: auto;
  max-height: 250px;
}

.pitch{
  border-top: solid red 1px;
  padding-top: 1px;
}

.pitch_end{
  border-color: red;
  border-right: solid red 1px;
  border-top: solid red 1px;
  line-height: 1px;
  margin-right: 1px;
  padding-right: 1px;
  padding-top:1px;
}
```

# 视频播放模板

* `jidoujisho Default`，观看视频时使用。
* **面向视频沉浸句子挖掘**：正面显示句子和词语；背面显示音频、图片、读音、词语、释义和句子。

### 正面模板

```html
<p id="sentence">{{Sentence}}</p><div id="word">{{Word}}</div>
```

### 背面模板

```html
<p id="sentence">{{Sentence}}</p><div id="word">{{Word}}</div><br>{{Audio}}<div class="image">{{Image}}</div><hr id=reading><p id="reading">{{Reading}}</p><h2 id="word">{{Word}}</h2><br><p><small id="meaning">{{Meaning}}</small></p>
```

<br>

# 制卡器模板

* `jidoujisho (Creator) Default`，用于卡片制作者。
* **面向漫画阅读和偶然遇到的词语**：正面显示图片和词语；背面显示音频、读音、词语、释义和句子。

### 正面模板

```html
{{Audio}}<div class="image">{{Image}}</div><br><p id="sentence">{{Sentence}}</p>{{Word}}
```

### 背面模板

```html
{{Audio}}<div class="image">{{Image}}</div><br><p id="sentence">{{Sentence}}</p>{{Word}}<hr id=reading><p id="reading">{{Reading}}</p><h2 id="word">{{Word}}</h2><br><p><small id="meaning">{{Meaning}}</small></p>
```

<br>

# 阅读器模板

* `jidoujisho (Reader) Default`，把文本分享到应用时使用。
* **面向小说阅读和普通阅读场景，例如浏览器或阅读器应用**：正面显示句子和词语；背面显示音频、图片、读音、词语、释义和句子。
* 它与视频播放模板相同，但单独保留，以便用户灵活自定义。

### 正面模板

```html
<p id="sentence">{{Sentence}}</p><div id="word">{{Word}}</div>
```

### 背面模板

```html
<p id="sentence">{{Sentence}}</p><div id="word">{{Word}}</div><br>{{Audio}}<div class="image">{{Image}}</div><hr id=reading><p id="reading">{{Reading}}</p><h2 id="word">{{Word}}</h2><br><p><small id="meaning">{{Meaning}}</small></p>
```
