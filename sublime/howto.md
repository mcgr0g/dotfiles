# Markdown

Устанавливаем плагин Markdown Preview, запускаем предпросмотр.
Вместо кириллического текста в браузере, возможно, отобразятся кракозябры. Дабы их избежать, необходимо задать кодировку в редактируемом файле — `<meta charset=utf-8>`. Потребуется также установка LiveReload и включение синхронизации при сохранении файла: Ctrl+Shift+P → LiveReload: Enable/Disable Plugins → Enable - Simple Reload.
Ctrl+Shift+P → Markdown Preview: Preview in Browser → markdown (если выберем github, кракозябры не исчезнут)

# md-toc
Достаточно печально, что Table of contents не доступно в маркдауне. Но его можно сгенерить.
Для начала конфигурим пакет под github разметку в `Sublime Text > Preferences > Package Settings > MarkdownTOC > Settings - User` так:
```
{
  "defaults": {
    "autoanchor": true,
    "autolink": true,
    "bracket": "round",
    "levels": [1,2,3,4,5,6],
    "indent": "\t",
    "remove_image": true,
    "link_prefix": "",
    "bullets": ["-"],
    "lowercase": "only_ascii",
    "style": "unordered",
    "uri_encoding": true,
    "markdown_preview": "github"
  },
  "id_replacements": [
    {
      "pattern": "[_*]{2}([^\\s])[_*]{2}",
      "replacement": "\\1"
    },
    {
      "pattern": "[_*]([^\\s])[_*]",
      "replacement": "\\1"
    },
    {
      "pattern": "\\s+",
      "replacement": "-"
    },
    {
      "pattern": "&lt;|&gt;|&amp;|&apos;|&quot;|&#60;|&#62;|&#38;|&#39;|&#34;|!|#|$|&|'|\\(|\\)|\\*|\\+|,|/|:|;|=|\\?|@|\\[|\\]|`|\"|\\.|\\\\|<|>|{|}|™|®|©",
      "replacement": ""
    }
  ],
  "logging": false
}

```