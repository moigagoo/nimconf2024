import karax/karax

import kraut

import app/routes
import app/pages/notfound


let renderer = routeRenderer(routes.routes, defaultRenderer = notfound.render)

setRenderer(renderer)

