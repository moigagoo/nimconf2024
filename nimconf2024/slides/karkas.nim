import nimib, nimiSlides


template slide* =
  autoAnimateSlides(5):
    nbText "## Karkas" 

    showAt(2):
      nbText """
-   Building blocks for layouts
    -   Construct pages with flexbox-based primitives
        
-   Additional sugar for VNode styling
    -   Type less stuff to please the compiler

-   Unified approach to components
    -   Svelte-like all-in-one components
    -   Layouts are components, too
"""

    showAt(3):
      nbText """
```nim
include karax/prelude
import karkas

import ../[pages, state]


proc navEntry(page: Page, url, caption: string): VNode =
  buildHtml:
    tdiv(style = box() <- {minWidth: "50px"}):
      if state.currentPage != page:
        a(href = k url):
          text k caption
      else:
        text k caption
```
"""

    showAt(4):
      nbText """
```nim
const
  topPanelStyle = {padding: "10px", boxShadow: "0 0 10px"}

proc render*(body: VNode): VNode =
  buildHtml:
    tdiv(style = vStack()):
      tdiv(style = topPanel() <- hStack() <- topPanelStyle):
        navEntry(index, "#/", "Home")
        navEntry(user, "#/user", "User")
      tdiv:
        for node in body:
          node
```
"""

    showAt(5):
      nbText """
```nim
include karax/prelude
import kraut

import ../[pages, state, layout]


proc render*(context: Context): VNode =
  currentPage = Page.user
  document.title = "user"

  layout.render buildHtml(tdiv) do:
    h1: text "user"
```
"""

