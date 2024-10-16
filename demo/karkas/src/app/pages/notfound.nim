import karax/[karaxdsl, kdom, vdom]
import kraut

import ../[pages, state, layout]


proc render*(context: Context): VNode =
  currentPage = Page.notfound
  document.title = "notfound"

  layout.render buildHtml(tdiv) do:
    h1: text "notfound"

