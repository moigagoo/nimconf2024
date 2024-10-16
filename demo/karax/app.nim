include karax/prelude

proc render(routerData: RouterData): VNode =
  buildHtml:
    tdiv:
      h1:
        text "Header"
      p:
        text "You're at " & $routerData.hashPart

setRenderer render

