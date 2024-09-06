import nimib, nimiSlides


template slide* =
  autoAnimateSlides(3):
    nbText "## Kraut" 

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
include karax/prelude
import kraut

const
  routes = {
    "/": renderIndes,
    "/users/": renderUsers,
    "/users/{userId}/": renderUser
  }

setRenderer routeRenderer(routes)
```

```nim
include karax/prelude
import kraut

proc renderUser*(context: Context): VNode =
  buildHtml:
    tdiv:
      p:
        text "User id: " & context.urlParams["userId"]
"""

