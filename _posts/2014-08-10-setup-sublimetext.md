---
title: Setup SublimeText3 for web developing
author: Petyo Kostakov
layout: post
---

<h3>Install 'Package Control'</h3>
<p>
	Package Control is third party tool for sublime like npm(NodeJS),apt - Advanced Packaging Tool(Unix). This tool connects to server that stores packages(applications) for sublime. Package control take care for installation from user perspective it`s needed only to type the name of the package that you want and it will install it. After installation sometimes is needed restart of sublime in order to application came in to action.
</p>
<ol>
	<li>Open sublime console - ctrl + ` ||  <code>View</code> ->  <code>Show Console</code></li>
	<li>Paste this code:<pre>import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())</pre></li>
	<li>Hit  <code>Enter </code> and wait for installation to complete. You can watch progress in the bottom left corner of sublime. This place is also status bar.</li>
</ol>
<a href="https://sublime.wbond.net/"><span class="link-tab">[LINK]</span></a>

<h2>Plugins</h2>
<p>All plugins are installed with 'Package Control'.<br> Steps:</p>
<ol>
	<li>Open 'Package Control' <code>Ctrl + Shift + P</code></li>
	<li>Type <code>'Insall Package'</code></li>
	<li>Choose <code>'Package Cotrol: Install Package'</code></li>
</ol>
<p>After installation of some tools, sublime may need restert in order plugins to work</p>

<h3>Emmet</h3>
<a href="http://emmet.io/"><span class="link-tab">[Site]</span></a>
<a href="http://scotch.io/bar-talk/write-html-crazy-fast-with-emmet-an-interactive-guide"><span class="link-tab">[Interactive Guide]</span></a>
<h3>JSHint</h3>
<p>JSHint is community driven tool not Douglas Drocford driven tool.</p>

<ul>
	<li>Type in terminal: <code>npm install jshint -g</code> (You may need to install npm in order to install this tool)</li>
	<li>From 'Package Control' install 'JSHint Guttter'</li>
	<li>
		You can set some globals that you use in 'globals' filed in:<br>
		<code>Preferences</code> -> <code>Package Settings</code> -> <code>JSHint Gutter</code> -> <code>Set Linting Preferences</code>
	</li>
</ul>

``` javascript
"globals": {
	"console" : true,
	"_" : true,
	"$" : true
}
```

<p>You can lint your files with <code>ctrl + shift + J</code>Also you can set to check your file for errors on edit and save. <br> Steps:</p>
<ul>
	<li><code>Preferences</code> -> <code>Package Settings</code> -> <code>JSHint Guttor</code> -> <code>Set Plugin Options</code></li>
	<li>Set to <code>true</code> whatever your needs are</li>
</ul>

<a href="https://github.com/victorporof/Sublime-JSHint"><span class="link-tab">[LINK]</span></a>

<h3>SublimeCodeIntel</h3>
<p>(CodeInteligence)autocomplete and go to definitions</p>
<a href="https://github.com/SublimeCodeIntel/SublimeCodeIntel"><span class="link-tab">[LINK]</span></a>
<a href="https://www.youtube.com/watch?v=GK9zaSj1C4M"><span class="link-tab">[VIDEO]</span></a>

<h3>Git Gutter</h3>
<p>Show changes, deleted lines and new lines in text editor of sublime</p>
### Sidebar Enhancements 

adds side bar menu OS options and adds open file with browser and shortcut to open it

[[LINK]](https://github.com/titoBouzout/SideBarEnhancements)

### JSFormat

use: <code>Ctrl + Alt + F</code>

<h2>Settings</h2>
<h3>Default global settings</h3>
<ol>
	<li><code>Preferences</code> -> <code>Settings User</code></li>
	<li>
		<p>Enter this and save:</p>
	</li>
</ol>
``` javascript
{
	"save_on_focus_lost": true // Set to true to automatically save files when switch to something else than the openned file
}
```
<p>You can set also:</p>

``` javascript
	"tab_size": 2,
	"translate_tabs_to_spaces": true,
```

<h3>Default javascript settings</h3>
<ol>
	<li>
		Open some file with js extention || Open new file and go to <code>View</code> -> <code>Syntax</code> -> <code>JavaScript</code> -> <code>JavaScript</code>
	</li>
	<li>
		Go to <code>Preferences</code> -> <code>Settings - More</code> -> <code>Syntax Specific - User</code>
	</li>
	<li>Fill file with this:</li>
</ol>

``` javascript
{
    "draw_white_space": "all", // draw white spaces to all js files
    "rulers": [80], // draw ruller at 80 character(good coding convention)
    "tab_size": 2,
    "translate_tabs_to_spaces": true,
    "trim_trailing_white_space_on_save": true, // Set to true to remove white space on save.
    "ensure_newline_at_eof_on_save": true, // Always adds a new line at the end of the file if not present when saving.
    "save_on_focus_lost": true, // Set to true to automatically save files when switching to a different file or application
}
```

### Shortcuts
<ol>
	<li><code>Preferences</code> -> <code>Key Bindings - User</code></li>
	<li>File file with this:</li>
</ol>
``` javascript
[
	{ "keys": ["ctrl+d"], "command": "run_macro_file", "args": {"file": "Packages/Default/Delete Line.sublime-macro"} },
	{ "keys": ["ctrl+up"], "command": "scroll_lines", "args": {"amount": 15.0 } },
	{ "keys": ["ctrl+down"], "command": "scroll_lines", "args": {"amount": -15.0 } },
	{ "keys": ["alt+up"], "command": "move", "args": {"by": "stops", "empty_line": true, "forward": false} },
	{ "keys": ["alt+down"], "command": "move", "args": {"by": "stops", "empty_line": true, "forward": true} }
]
```

<h3>Dot file</h3>
<p>Sublime Text 2 stores settings, themes, and plugins in the ~/Library/Application Support/Sublime Text 2 directory in three separate folders:</p>
<ul>
	<li>Installed Packages</li>
	<li>Packages</li>
	<li>Pristine Packages</li>
</ul>
