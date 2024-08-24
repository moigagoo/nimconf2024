import nimib, nimiSlides


template karax* =
  autoAnimateSlides(3):
    nbText "## Karax" 
    showAt(2):
      nbText """
-   Virtual DOM.
-   VNode
"""
    showAt(3):
      nbText """
```nim
include karax/prelude

proc render: VNode =
  buildHtml:
    tdiv:
      h1: text "This is header"
```
"""

