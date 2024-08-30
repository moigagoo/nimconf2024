import nimib, nimiSlides


template sauer* =
  autoAnimateSlides(3):
    nbText "## Sauer" 

    showAt(2):
      nbText """
-   Standardized app structure
    -   Init porject and add pages with shell commands
        
-   **Page** abstraction that represents anything that has its own route
    -   Focus on business logic, not implementation routine

-   Global state
    -   Access the current page from `state` module

"""

    showAt(3):
      nbText """
```nim
import kraut


routes:
  "/": index
  "/users/": users,
  "/users/{userId}/": user
```

```nim
include karax/prelude
import kraut

import ../[pages, state]


proc render*(context: Context): VNode =
  currentPage = Page.user
  document.title = "user"

  buildHtml:
    h1: text "user"
"""

