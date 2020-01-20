# BracketHighlighter
Modify `Preferences.sublime-settings` as shown at [offical site](http://facelessuser.github.io/BracketHighlighter/usage/#overview):
```
  "match_brackets": false,
  "match_brackets_angle": false,
  "match_brackets_braces": false,
  "match_brackets_content": false,
  "match_brackets_square": false,
  "match_tags": false
```
copy config from
> Preferences - Package settings - BracketHighlighter - Example Key Binding

to
> Preferences - Package settings - BracketHighlighter - Key Bindings User

activate hotkey `ctrl+alt+super+e`

# markdown-preview

Устанавливаем плагин Markdown Preview, запускаем предпросмотр.
Вместо кириллического текста в браузере, возможно, отобразятся кракозябры. Дабы их избежать, необходимо задать кодировку в редактируемом файле — `<meta charset=utf-8>`. Потребуется также установка LiveReload и включение синхронизации при сохранении файла: Ctrl+Shift+P → LiveReload: Enable/Disable Plugins → Enable - Simple Reload.
Ctrl+Shift+P → Markdown Preview: Preview in Browser → markdown (если выберем github, кракозябры не исчезнут)

# markdown-toc
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

# Monokai-JSON-plus

Достаточно давно плагин сломался. Но есть возможность [вылечить](https://forum.sublimetext.com/t/rainbow-colors-by-json-object-level-with-any-color-scheme/42968) через [Package Dev](https://packagecontrol.io/packages/PackageDev). После установки нужно:

ctrl + shift + p: PackageDev: Edit Current Color Scheme

вставить в правую часть:

```
{
	// http://www.sublimetext.com/docs/3/color_schemes.html
	"variables": {
		"rainbow1": "red",
        "rainbow2": "#4d79d3",
		"rainbow3": "green",
		"rainbow4": "yellow",
		"rainbow5": "orange",
		"rainbow6": "purple",
		"rainbow7": "white",
		// "background": "black", // You only need this if your scheme doesn't provide it already
	},
	"globals": {
		// "foreground": "var(green)",
	},
	"rules": [
		{
            "scope": "source.json meta.mapping.key string - punctuation",
            "foreground": "var(rainbow1)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping.key string - punctuation",
            "foreground": "var(rainbow2)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping.key string - punctuation",
            "foreground": "var(rainbow3)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping meta.mapping.key string - punctuation",
            "foreground": "var(rainbow4)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping.key string - punctuation",
            "foreground": "var(rainbow5)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping.key string - punctuation",
            "foreground": "var(rainbow6)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping.key string - punctuation",
            "foreground": "var(rainbow7)",
        },
        {
            "scope": "source.json meta.mapping.value string - punctuation",
            "foreground": "color(var(rainbow1) blend(var(background) 70%)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping.value string - punctuation",
            "foreground": "color(var(rainbow2) blend(var(background) 70%)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping.value string - punctuation",
            "foreground": "color(var(rainbow3) blend(var(background) 70%)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping meta.mapping.value string - punctuation",
            "foreground": "color(var(rainbow4) blend(var(background) 70%)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping.value string - punctuation",
            "foreground": "color(var(rainbow5) blend(var(background) 70%)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping.value string - punctuation",
            "foreground": "color(var(rainbow6) blend(var(background) 70%)",
        },
        {
            "scope": "source.json meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping meta.mapping.value string - punctuation",
            "foreground": "color(var(rainbow7) blend(var(background) 70%)",
        },
	]
}
```

