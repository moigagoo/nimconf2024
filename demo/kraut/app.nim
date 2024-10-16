include karax/prelude
import kraut


proc renderIndex(context: Context): VNode =
  buildHtml:
    tdiv()


proc renderUsers(context: Context): VNode =
  buildHtml:
    tdiv()


proc renderUser(context: Context): VNode =
  buildHtml:
    tdiv:
      p:
        text "User id: " & context.urlParams["userId"]

const
  routes = {
    "/": renderIndex,
    "/users/": renderUsers,
    "/users/{userId}/": renderUser
  }

setRenderer routeRenderer(routes)

