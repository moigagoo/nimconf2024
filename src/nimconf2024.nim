import nimib, nimiSlides

import nimconf2024/utils
import nimconf2024/slides/[title, keypoints, karax, kraut, sauer, karkas, ending]


nbInit(theme = revealTheme)

slides:
  title
  keyPoints
  karax
  kraut
  sauer
  karkas
  ending

nbSave()

