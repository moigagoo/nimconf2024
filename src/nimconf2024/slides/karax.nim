import nimib, nimiSlides


template slide* =
  autoAnimateSlides(3):
    nbText "## Karax" 

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

