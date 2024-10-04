import nimib, nimiSlides

import nimconf2024/utils
import nimconf2024/slides/[title, preamble, keypoints, karax, kraut, sauer, karkas]


nbInit(theme = revealTheme)

slides:
  title
  preamble
  keyPoints
  karax
  kraut
  sauer
  karkas

nbSave()

