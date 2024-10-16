# Package

version       = "0.1.0"
author        = "Constantine Molchanov"
description   = "A new awesome nimble package"
license       = "MIT"
srcDir        = "src"
bin           = @["app"]


# Dependencies

requires "nim >= 2.2.0"
requires "karax >= 1.3.0", "kraut >= 1.0.3"

taskRequires "serve", "static_server >= 2.2.1"


# Tasks

task make, "Build the app":
  selfExec "js src/app.nim"

task serve, "Serve the app with a local server":
  echo "The app is served at: http://localhost:1337/app.html#/"
  echo()
  exec findExe("static_server")

