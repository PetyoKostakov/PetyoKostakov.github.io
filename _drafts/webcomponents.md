---
layout: post
---

# References

[[webcomponents.org]](http://webcomponents.org/)
[[polymer-project.org]](https://www.polymer-project.org/)
[[polymer designer]](https://www.polymer-project.org/tools/designer/)
[[polymer themes]](https://polymerthemes.com/)
[[build web components]](https://github.com/PolymerLabs/seed-element)
[[find and share components]](http://customelements.io/)
[[icons catalog]](http://www.polymer-project.org/components/core-icon/demo.html)
[[paper elements library]](https://www.polymer-project.org/0.5/components/paper-elements/demo.html#paper-toast)

[[First Polymer app]](https://www.polymer-project.org/0.5/docs/start/getting-the-code.html)

# Intro

# Hello world

[[VIDEO - ]]

# Version 0.8

- webcomponents-lite.js - is web components polyfill without shadow DOM, this is imported because polymer has much performant version of shadow DOM called shedy DOM. This saves 78kb network bandwith
- <dom-module> insted of <polymer-element>
- id="el-name" insted of name="el-name"

# Example

'''
<link rel="import" href="../bower_components/polymer/polymer.html">

<polymer-element name="pk-example" attributes="owner age">
<template>
  <style type="text/css">
      :host { /*host is selector for pk-example tag*/
        position: relative;
      }
      polyfill-next-selector { content: 'h3'; }/*polyfill for ::content selector*/
      ::content h3 {
        margin: 0;
        font-size: 1.8rem;
        font-weight: 300;
      }
  </style>
  <content select="h3"></content>
  <p>The owener of the tag: {{owner}} at {{ age }} years old.</p>
  <div class="">
    <button  type="button" name="button" on-click="{{setFocus}}">Focus to input </button>
    <input id="nameInput" value="{{owner}}" placeholder="Your name here...">
  </div>
  <div class="">
    <label for="ageInput">Age:</label>
    <input id="ageInput" type="range" value="{{age}}">
  </div>
  <content></content><!-- insert nodes that haven't been selected -->
</template>
	<script>
  Polymer({
    owner: "Daniel",
    age: 25,
    setFocus: function() {
      this.$.nameInput.focus();
    },
    nameChanged: function() {
      if (this.name) {
        // Ensure name is capitalized
        this.name = this.name[0].toUpperCase() +
                    this.name.slice(1);
      }
    }
  });
</script>
</polymer-element>
'''

Then just import.

```
<!DOCTYPE html>
<html>
<head>
  <title>Polymer example</title>
  <script src="bower_components/webcomponentsjs/webcomponents.min.js"></script>
  <link rel="import" href="elements/pk-example.html">
</head>
<body fullbleed><!-- fullbleed ensure that there is no space between body container and the browser frame -->
  <pk-example age="30"><h3>My Component</h3></pk-example>
</body>
</html>
```

# Installing

```
    $ bower install --save Polymer/polymer#^0.5
```

# Reusing other elements

core-ajax is required to reuse elements and must be installed this way

```
    $ bower install --save Polymer/core-ajax#^0.5
```

and include an import that loads the new dependency in my-element.html:
<link rel="import" href="../bower_components/core-ajax/core-ajax.html">
<core-ajax url="http://example.com/json" auto response="{{resp}}"></core-ajax>

# Lifecycle methods

[[DOC]](https://www.polymer-project.org/0.5/docs/polymer/polymer.html#lifecyclemethods)

```
Polymer('tag-name', {
  created: function() { ... },
  ready: function() { ... },
  attached: function () { ... },
  domReady: function() { ... },
  detached: function() { ... },
  attributeChanged: function(attrName, oldVal, newVal) {
    //var newVal = this.getAttribute(attrName);
    console.log(attrName, 'old: ' + oldVal, 'new:', newVal);
  },
});
```

# Run on server

Note that to use polymer components you must start your project on server in order HTML Imports to work properly. Very simple way to do that is to type in terminal.

```
    $ python -m SimpleHTTPServer
```


# Stuff to know

 - Dashes in the name of components -  are to avoid collision with future release of html <elements class=""></elements>
 - Inspect elements - inspect shadow DOM elements on chrome by checking "user agent shadow DOM" checkbox in the settings
 - The noscript attribute in <polymer-element> tag indicates that this is a simple element that doesn’t include any script. An element declared with noscript is registered automatically.
