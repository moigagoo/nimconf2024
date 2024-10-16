import nimib, nimiSlides


template slide* =
  autoAnimateSlides(5):
    nbText "## Karkas" 

    showAt(1):
      nbImage("/img/electric_screwdriver.jpg")

    showAt(2):
      nbText """
-   Additional sugar for VNode styling
    -   Type less stuff to please the compiler

-   Unified approach to components
    -   Svelte-like all-in-one components
    -   Layouts are components, too

-   Building blocks for layouts
    -   Construct pages with flexbox-based primitives
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

    speakerNote """
Thanks to Sauer and Kraut's higher level abstractions and enforced code structure, we can actually have a component system.

This is where Karkas enters the stage. It's package that helps create components. 

First, Karkas gives you syntax sugar to apply styles to VNodes. While Karax offeres VNode styling by default, its usage requires a lot of redundant typing and type conversion to please the compiler.

With this sugar, you can create self-contained Svelte-like components.

Finally, there's sugar for layouting, based on flexbox.

Here's a sample app generated with Sauer, and layouted with Karkas. You can find the complete code on GitHub.

First, check out how we create an isolated navigation entry component. Notice that it knows how to render itself based on whether it represents the currently opened page or not.

Also, you can spot Karkas's arrow proc that converts sequences to VStyles and merges multiple styles together. 

Another interesting proc is k. It simply converts a string into a kstring, saving you typing.

Next, let's look at the layout. This one has its styles stored in a separate value and then applied after Karkas's built-in layouting presets for top panel and horizontal stack.

Notice how we make a component render other components: we simply pass a VNode and iterate over its children.

Finally, here's the page code. We now render its content inside the layout component, which ensures every page gets a nice navigation bar. This is done with a simple do notation trick.

Here's how the end result looks like. You can see our app using standard layout across pages and correctly reacting to navigation.
"""

