# laptop-dotfiles

![desktop](/images/desktop.png)

---
- [laptop-dotfiles](#laptop-dotfiles)
  - [- windows 10](#--windows-10)
    - [* theme](#-theme)
    - [* wallpapers](#-wallpapers)
    - [* icons](#-icons)
  - [- apps](#--apps)
    - [* cmder](#-cmder)
    - [* discord](#-discord)
    - [* firefox](#-firefox)
    - [* vscode](#-vscode)
    - [* spotify](#-spotify)
    - [* sumatrapdf](#-sumatrapdf)
    - [* others](#-others)
      - [Zettlr](#zettlr)
      - [Calibre](#calibre)
      - [Vim](#vim)
  
---
## - windows 10

### * theme

![theme](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/40ee5933-f37f-4ee8-9857-e6395a9858bf/de3jnxj-8acef562-15ed-4ed3-b7a8-533e7eb5c017.png/v1/fill/w_981,h_815,q_70,strp/simplify_10_vanilla___windows_10_theme_by_dpcdpc11_de3jnxj-pre.jpg)

* [Simplify 10 Vanilla Dark](https://www.deviantart.com/dpcdpc11/art/Simplify-10-Vanilla-Windows-10-Theme-852482791)
* [Simplify 10 Vanilla Dark Curtain Theme](https://dpcdpc11.gumroad.com/?sort=page_layout#NSuPn)

### * wallpapers

My wallpapers usually come from [Unsplash](https://www.unsplash.com)

Current wallpaper:

![current wallpaper](/images/grey-sea.jpg)


Wallpaper folder: [walls](https://github.com/aritmos/laptop-dotfiles/tree/main/walls)

### * icons
![icons](/images/icons.png)

Normally create a shortcut on the applications directory, change the ICO and pin it to the task bar. For apps where this cannot be done I use [Resource Hacker](http://www.angusj.com/resourcehacker/) to directly change the ICO on the EXE

Icons mostly come from [Remix Icon](https://www.remixicon.com) but also occasionally from [Ion Icons](https://ionic.io/ionicons)

I turn SVG to PNG using [Icon Scout's icon editor](https://iconscout.com/icon-editor)
and then PNG to ICO using the [free png to ico](https://freepicturesolutions.com/free-png-to-ico-converter.html) utility

ICO folder: [ico](https://github.com/aritmos/laptop-dotfiles/tree/main/ico)

---
## - apps

### * cmder
![cmder](/images/cmder.png)

Main Tweaks:
* Fira Code font
* Quake Style dropdown
* (Manual) RainGlow Box Uk theme

![cmder-colors](/images/cmder-colors.png)

* Disabled most bars to keep it minimal

Others:
* I like having cmder autorun and minimise on startup so that I can quickly open it using `<ctrl>+'` . 

Startup directory shortcut:
> `...\cmder\cmder.exe -- -min`
### * discord
![discord](/images/discord.png)[redacted servers for privacy]
* [BetterDiscord](https://betterdiscord.app/) with [Nocturnal](https://betterdiscord.app/theme/Nocturnal) theme.

CustomCSS [file](https://github.com/aritmos/laptop-dotfiles/blob/main/discord/custom.css):

* Removed menu bar text logo
* Custom home logo
* Removed gift icon (settings toggle not working)
* Custom colors

### * firefox
![firefox](/images/firefox.png)

userChromeCSS: [Wavefox](https://github.com/QNetITQ/WaveFox)

Tweaked [Vimium](https://vimium.github.io/):
* Custom Theme
```css
:root {
  --font-size: 16;
  --font-weight: normal;
  --font: tewi, Source Code Pro, sans;
  --padding: 2px;
  --shadow: 0 2px 4px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);

  /* --- Based on RainGlow Tron --- */

  --fg: #ffffff;
  --bg: #07090B;
  --border: #07090B;
  --main-fg: #007fa4;
  --accent-fg: #00d5fb;
```
* Custom Binds:
```vim
# Remove clashes with add-on keybinds.
unmap <a-o> 
unmap <a-p>
unmap <a-f>

# Tweak Binds
map h goBack
map l goForward
map o Vomnibar.activateInNewTab
map O Vomnibar.activate
map b Vomnibar.activateBookmarksInNewTab
d: https://dictionary.cambridge.org/dictionary/english/%s Dictionary
g: https://www.google.com/search?q=%s Google

y: https://www.youtube.com/results?search_query=%s Youtube
```
* Custom search engines:
```
d: https://dictionary.cambridge.org/dictionary/english/%s Dictionary
w: https://www.wikipedia.org/w/index.php?title=Special:Search&search=%s Wikipedia
y: https://www.youtube.com/results?search_query=%s Youtube
```

Privacy/Security Add-Ons:
* Adblocker for Youtube
* Bitwarden
* Chameleon
* ClearURLs
* Cookie AutoDelete
* Multi-Account Containers
* I don't care about cookies
* Startpage
* Temporary Containers
* uBlock Origin 
* Vimium
* `<VPN>`

Along with standard [firefox hardening](https://www.privacytools.io/browsers/#about_config) in settings

### * vscode
I like using the [Horizon](https://horizontheme.netlify.app/) theme for long coding sessions and [Box Uk Contrast](https://github.com/rainglow/vscode/blob/master/themes/boxuk-contrast.json) for everything else
![vscode-horizon](/images/vscode-horizon.png)
![vscode-boxuk](/images/vscode-boxuk.png)
Vim Emulation extension with minor tweaks:
* `jj` to exit **Insert Mode**
* `<space>` as leader key
* `'block outline'` instead of block cursor
![cursor](/images/cursor.png)
* and many more QoL shortcut keybinds...

### * spotify
![spotify](/images/spotify.png)

[Spicetify](https://github.com/khanhas/spicetify-cli) with [Dribbblish](https://github.com/morpheusthewhite/spicetify-themes/tree/v2/Dribbblish) community theme

Custom color theme based on RainGlow's [Tron Contrast](https://github.com/rainglow/vscode/blob/master/themes/tron-contrast.json) theme:
```
[tron]
text               = FFFFFF
subtext            = F0F0F0
sidebar-text       = F0F0F0
main               = 07090b
sidebar            = 0a1820
player             = 262626
card               = 262626
shadow             = 000000
selected-row       = d1d6e2
button             = 39dbfb
button-active      = 39dbfb
button-disabled    = 535353
tab-active         = 39dbfb
notification       = 39dbfb
notification-error = e22134
misc               = BFBFBF
```
CustomCSS:
```css
/* Extra padding for main container  
   to not overlap with window buttons */

.Root__top-container {
    padding-top: 40px !important;
}
```

### * sumatrapdf
![sumatrapdf](/images/sumatrapdf.png)

> I cannot comfortably read from dark backgrounds so I chose this beige color scheme instead

Custom Advanced Options:
```
MainWindowBackground = #e7e1d8
EscToExit = false
ReuseInstance = true
UseSysColors = false
RestoreSession = true

FixedPageUI [
	TextColor = #000000
	BackgroundColor = #e7e1d8
	SelectionColor = #f5fc0c
	WindowMargin = 2 4 2 4
	PageSpacing = 4 4
	GradientColors = #e7e1d8

ShowToolbar = false
ShowFavorites = false
```
### * others

#### Zettlr
* Dark Frankfurt theme
* CustomCSS
```css
body #editor .CodeMirror {
    font-family: 'SF Mono';
}
```
#### Calibre
* San Francisco Night theme

#### Vim
![vim](/images/vim.png)
[ Rarely use vanilla vim ] 
* Color-scheme: [Deep Space](https://github.com/tyrannicaltoucan/vim-deep-space)
* Lightline theme: [Challenger Deep](https://github.com/challenger-deep-theme/vim)
