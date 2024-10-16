import karax/[karaxdsl, kdom, vdom]
import kraut

import ../[pages, state, layout]


proc render*(context: Context): VNode =
  currentPage = Page.user
  document.title = "user"

  layout.render buildHtml(tdiv) do:
    h1: text "user"

