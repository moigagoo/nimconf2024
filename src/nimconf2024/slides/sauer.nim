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

    speakerNote """
By allowing us to separate route definition and processing, Kraut paves the way for having a standardized routing convention. This convention is implenented by Kraut's companion app Sauer.

Sauer is a command-line app for Karax project setup with a certain code structure. It also allows you to add new routes quickly.

Sauer introduces a new abstraction called Page. Page represents a location that has a route. It maps naturally to your app business logic. For example, you can have a page for the user profile, a page for the shopping cart, and a search page.

Another addition that Sauer makes is that it creates a state module in your app. It's a module that holds the global state of your app, allowing you to pass the data around across modules. Really simple solution but works really well.

Here're some quick examples of Sauer commands and the code they produce.

Notice that we use the global state to store the current page. This is just one example if the data we can store there.
"""

