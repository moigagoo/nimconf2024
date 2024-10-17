import nimib, nimiSlides


template slide* =
  autoAnimateSlides(4):
    nbText "## Karax" 

    showAt(1):
      nbImage("/img/screwdriver.jpg")

    showAt(2):
      nbText """
-   Virtual DOM implementation
    -   Write functions to run in a tight loop to redraw the page

-   DSL to build web pages
    -   Use familiar tag names without HTML noise

-   VNode type that incapsulates a renderable chunk
    -   Essentially a component
"""

    showAt(3):
      nbText """
```nim
include karax/prelude

proc render(routerData: RouterData): VNode =
  buildHtml:
    tdiv:
      h1:
        text "Header"
      p:
        text "You're at " & $routerData.hashPart

setRenderer render
```

```shell
$ karun app.nim
```
"""

    showAt(4):
      nbImage("/img/karax_app.png")


    speakerNote """
Let's first talk a bit about Karax and what foundation it offers us.

First, it implements a Virtual DOM, which is the base mechanic behind React and similar frameworks. The Karax implementation is really straightforward: you just define procs that are evaled in a tight loop to redraw the UI. Karax cares about doing it optimally.

Second, Karax gives us a great DSL to actually write pages. It's like React's JSX but instead of being a separate HTML-like language, it's just proper Nim.

Finally, Karax offers VNode type that represents a renderable chunk. It's basically a component, almost.

This is already enough to build basic apps.

Here's a quick example of a Karax app. And here's what the app looks rendered.

The code is pretty self-explanatory but there's one line I want to draw your attention to. See how we access the hash part. It's just a string. You can imagine how painful it can be to manage multiple routes if you have to parse the string into meaningful chunks all the time. You must handle heading, trailing, and repeating slashes and variable parts manually.
"""

