include karax/prelude
import karkas

import pages

import components/naventry


const
  topPanelStyle = {padding: "10px", boxShadow: "0 0 10px"}


proc render*(body: VNode): VNode =
  buildHtml:
    tdiv(style = vStack()):
      tdiv(style = topPanel() <- hStack() <- topPanelStyle):
        navEntry(index, "#/", "Home")
        navEntry(user, "#/users/moigagoo", "moigagoo")
      tdiv:
        for node in body:
          node

