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
<p class="link-tab">LINK</p>https://sublime.wbond.net/


<h3>Dot file</h3>

<p>Sublime Text 2 stores settings, themes, and plugins in the ~/Library/Application Support/Sublime Text 2 directory in three separate folders:</p>
<ul>
	<li>Installed Packages</li>
	<li>Packages</li>
	<li>Pristine Packages</li>
</ul>

``` javascript
myApp.factory('AwesomeService', function (execute, d1, d2,...,dn) {
  var api = /* definition of our service api */
  return execute(Logger).onThrowOf(execute(Authorization).before(api, {
    methodPattern: /Special|getArticleById/,
    argsPatterns: [/^user$/, /^[Ii]d(_num)?$/]
  }));
});
```