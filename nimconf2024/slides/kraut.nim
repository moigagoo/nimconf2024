import nimib, nimiSlides


template slide* =
  autoAnimateSlides(4):
    nbText "## Kraut" 

    showAt(1):
      nbImage("/img/screwdriver_with_heads.jpg")

    showAt(2):
      nbText """
-   Parser and matcher for Karax's `hashPart`
    -   Define routes as string templates matched against the current `hashPart` value 

-   Familiar renderer functions from Karax
    -   Just return a `VNode` somehow

-   Query and URL param support
    -   Access captured context in `Context` object
"""

    showAt(3):
      nbText """
```nim
proc renderUser*(context: Context): VNode =
  buildHtml:
    tdiv:
      p:
        text "User id: " & context.urlParams["userId"]
```

```nim
include karax/prelude
import kraut


const
  routes = {
    "/": renderIndex,
    "/users/": renderUsers,
    "/users/{userId}/": renderUser
  }

setRenderer routeRenderer(routes)
"""
    showAt(4):
      nbImage("/img/kraut_app.png")

    speakerNote """
Most apps will have more than one location to render. Also, you will often need the same location show different data depending on the URL param. Vanilla Karax doesn't offer route management, and so this is how Kraut was created.

Kraut implements URL parsing and matching. You can define routes as strings to be matched agaist the current URL.

For every route, you define a proc to be executed when this route matches, very simple.

Kraut builds upon Karax's built-in VNode type, meaning that your route rendering procs should just return a VNode.

You can use variable parts in your routes and pass GET-params, Kraut will capture the values and pass them to the renderer.

Here's our previous app but with routes. It renders essentially the same as the previous version but our code is much better now:
1. Our routes are defined as a simple sequence of pairs. You can put your route definition into a separate module and even split it across several modules.
2. Render proc can now live in a separate module as it receives all its context from Kraut.
3. We no longer work with raw strings but instead have a nice table of params and their values.
"""

