# LAPTOP-DOTFILES

`v1.1` ~ **Horizon**
![horizon](https://camo.githubusercontent.com/c09f83b02a7cf7c60adea511d63bd33ba026b7a6c28d571228d5f5cc7acab375/68747470733a2f2f692e696d6775722e636f6d2f707742554353652e706e67)

---
- [LAPTOP-DOTFILES](#laptop-dotfiles)
  - [**WINDOWS 10**](#windows-10)
    - [THEME](#center-theme-center)
    - [WALLPAPERS](#center-wallpapers-center)
    - [ICONS](#center-icons-center)
  - [**APPS**](#apps)
    - [CMDER](#center-cmder-center)
    - [DISCORD](#center-discord-center)
    - [FIREFOX](#center-firefox-center)
    - [VSCODE & CODIUM](#center-vscode--codium-center)
    - [SPOTIFY](#center-spotify-center)
    - [SUMATRAPDF](#center-sumatrapdf-center)
  - [**OTHERS**](#others)
    - [AUTOHOTKEY](#center-autohotkey-center)
  
## **WINDOWS 10** 

---

### <center> THEME </center>

![theme](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/40ee5933-f37f-4ee8-9857-e6395a9858bf/de3jnxj-8acef562-15ed-4ed3-b7a8-533e7eb5c017.png/v1/fill/w_981,h_815,q_70,strp/simplify_10_vanilla___windows_10_theme_by_dpcdpc11_de3jnxj-pre.jpg)

* [Simplify 10 Vanilla Dark](https://www.deviantart.com/dpcdpc11/art/Simplify-10-Vanilla-Windows-10-Theme-852482791)
* [Simplify 10 Vanilla Dark Curtain Theme](https://dpcdpc11.gumroad.com/?sort=page_layout#NSuPn)

Download and apply [UXThemePatcher](https://mhoefs.eu/software_uxtheme.php) and [OldNewExplorer](https://m.majorgeeks.com/files/details/oldnewexplorer.html) (explained in links) to apply the themes. Curtain themes are applied using [Stardock Curtains](https://www.stardock.com/products/curtains/)

---

### <center> WALLPAPERS </center>

My wallpapers usually come from [Unsplash](https://www.unsplash.com)

Current wallpaper:

![current wallpaper](/walls/red-mountains.jpg)


[[wallpapers]](https://github.com/aritmos/laptop-dotfiles/tree/main/walls)

---

### <center> ICONS </center>
![icons](/images/icons.png)

First create a shortcut on the applications directory, change the ICO and pin it to the task bar. For apps where this cannot be done I use [Resource Hacker](http://www.angusj.com/resourcehacker/) to directly change the ICO in the EXE

Icons come from [Remix Icon](https://www.remixicon.com)

I turn SVG to PNG using [Icon Scout's icon editor](https://iconscout.com/icon-editor)
and then PNG to ICO using the [free png to ico](https://freepicturesolutions.com/free-png-to-ico-converter.html) utility

 [[Icons]](https://github.com/aritmos/laptop-dotfiles/tree/main/ico) 

## **APPS**

---

### <center> CMDER </center>
![cmder](/images/cmder.png)
 
\*\* *now including Debian! (via WSL)* \*\*

![wsl](/images/wsl.png)

Main Tweaks:
* Quake Style dropdown
* Horizon theme 

![cmder-colors](/images/cmder-colors.png)

[[Config]](https://github.com/aritmos/laptop-dotfiles/blob/main/cmder/config.xml)

Others:
* I like having cmder autorun and minimise on startup so that I can quickly open it using `<ctrl>+'` . Startup directory shortcut:

> `...\cmder\cmder.exe -- -min`


* Cmder has a very useful `'alias'` utility, use it!

---

### <center> DISCORD </center>
![discord](/images/discord.png)[redacted servers for privacy]
* [BetterDiscord](https://betterdiscord.app/) with [Nocturnal](https://betterdiscord.app/theme/Nocturnal) theme.

[CustomCSS](https://github.com/aritmos/laptop-dotfiles/blob/main/discord/custom.css):

* Removed menu bar text logo
* Custom home logo
* Removed gift icon (settings toggle not working)
* Custom Horizon colors

---

### <center> FIREFOX </center>

[Wavefox](https://github.com/QNetITQ/WaveFox) userChromeCSS and tweaked [Vimium](https://vimium.github.io/):

![vimium-omnibar](/images/vimium-omnibar.png)
![vimium-easymotion](/images/vimium-easymotion.png)

* Custom Theme
```css
:root {
  --font-size: 16;
  --font-weight: normal;
  --font: tewi, Source Code Pro, sans;
  --padding: 2px;
  --shadow: 0 2px 4px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);

/* ------- HORIZON ------- */

  --fg: #ffffff;
  --bg: #1a1c23;
  --border: #2e303e;
  --main-fg: #e95678;
  --accent-fg: #59e3e3;
```
* Custom Binds:
```vim
# Unmap clashes with add-ons
unmap <a-o> 
unmap <a-p>
unmap <a-f>

# Binds
map h goBack
map l goForward
map o Vomnibar.activateInNewTab
map O Vomnibar.activate
map b Vomnibar.activateBookmarksInNewTab
map B Vomnibar.activateBookmarks
map \ passNextKey
```
* Custom search engines:
```
d: https://dictionary.cambridge.org/dictionary/english/%s Dictionary
w: https://www.wikipedia.org/w/index.php?title=Special:Search&search=%s Wikipedia
y: https://www.youtube.com/results?search_query=%s Youtube
g: https://github.com/search?q=%s Github
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
* `<VPN Proxy>`

Along with standard [firefox hardening](https://www.privacytools.io/browsers/#about_config) in settings

Finally I use the add-on [Stylish](https://add0n.com/stylus.html) to style my search page to match the Horizon theme

![startpage](/images/startpage.png)

Startpage [CustomCSS](https://github.com/aritmos/laptop-dotfiles/tree/main/firefox/startpage-horizon.css)

---

### <center> VSCODE & CODIUM </center>
I use VSCode with the [Horizon](https://horizontheme.netlify.app/) theme for coding but have now switched to [VSCodium](https://vscodium.com/) for all other writing tasks. This allows me to have easy access to two 'lightweight' configurations of VSCode: one set up as an IDE and the other as a misc text editor, instead of one big and slow config.

Both are installed in [portable mode](https://code.visualstudio.com/docs/editor/portable).

![vscode](/images/vscode.png)

For general writing in VSCodium I use the light (bright) version of the Horizon theme

![vscodium](/images/vscodium.png)

[Vim emulation settings](https://github.com/aritmos/laptop-dotfiles/tree/main/vscode/vim-settings.json) (both editors)

---

### <center> SPOTIFY </center>
![spotify](/images/spotify.png)

[Spicetify](https://github.com/khanhas/spicetify-cli) with [Dribbblish](https://github.com/morpheusthewhite/spicetify-themes/tree/v2/Dribbblish) community theme

Custom horizon color scheme: 
```
[horizon]
text               = ffffff
subtext            = ffffff
sidebar-text       = ffffff
main               = 1c1e26 
sidebar            = 232530
player             = F09383
card               = E95678
shadow             = 000000
selected-row       = 25b2bc
button             = E95678
button-active      = aaaaff
button-disabled    = ffaaaa
tab-active         = 27D796
notification       = 1d8991
notification-error = aa4400
misc               = BFBFBF
```
\+ some [CustomCSS](https://github.com/aritmos/laptop-dotfiles/tree/main/spotify/custom.css) to tweak some colors

^ Important: For some reason I had trouble applying this css in a separate file and using `@import`, so this is just appended at the end of `user.css`

Extensions:
* Reddit - community playlists (seen above)
* FullAppDisplay - nice fullscreen art

![spotify-fullscreen](/images/spotify-fullscreen.png)

`SpotifyNoControls` (Removes 'title bar' buttons) via AHK (see AHK section)

---

### <center> SUMATRAPDF </center>
![sumatrapdf](/images/sumatrapdf.png)

^ I can't comfortably read from dark backgrounds so I chose the background from Horizon Bright

Custom Advanced Options:
```
MainWindowBackground = #fdf0ed
EscToExit = false
ReuseInstance = true
UseSysColors = false
RestoreSession = true

FixedPageUI [
	TextColor = #000000
	BackgroundColor = #fdf0ed
	SelectionColor = #f5fc0c
	WindowMargin = 2 4 2 4
	PageSpacing = 4 4
	GradientColors = #fdf0ed

ShowToolbar = false
ShowFavorites = false
```

## **OTHERS**

---
### <center> AUTOHOTKEY </center>

I have some simple scripts for window manipulation, these allow me to remove title bar buttons where I can while maintaining usability.

I also remove Spotify's controls via a script, this achieves the same purpose as running `SpotifyNoControl.exe`

[[Scripts]](https://github.com/aritmos/laptop-dotfiles/tree/main/ahk/main.ahk)
