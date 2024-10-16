include karax/prelude
import karkas

import ../[pages, state]


proc navEntry*(page: Page, url, caption: string): VNode =
  buildHtml:
    tdiv(style = box() <- {minWidth: "50px"}):
      if state.currentPage != page:
        a(href = k url):
          text k caption
      else:
        text k caption

