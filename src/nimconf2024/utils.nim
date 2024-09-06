import std/macros


macro slides*(modNames: untyped): untyped =
  result = newStmtList()

  for modName in modNames:
    result.add newDotExpr(modName, newIdentNode("slide"))

