import nimib, nimiSlides


template slide* =
  autoAnimateSlides(3):
    nbText "## Sauer" 

    showAt(1):
      nbImage("/img/screwdriver_box.jpg")

    showAt(2):
      nbText """
-   Standardized app structure
    -   Init project and add pages with shell commands
        
-   **Page** abstraction that represents anything that has its own route
    -   Focus on business logic

-   Global state
    -   Access the current page from `state` module
"""

    showAt(3):
      nbText """
```shell
$ sauer init
$ sauer pages new user --route='/users/{userId}/'
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

