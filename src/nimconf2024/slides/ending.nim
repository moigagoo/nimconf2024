import nimib, nimiSlides


template slide* =
  autoAnimateSlides(1):
    nbText "## The End" 

    nbText """
- Live app example: [app.cannon-chat.online](https://app.cannon-chat.online)
- Demo apps: [github.com/moigagoo/nimconf2024/tree/develop/demo](https://github.com/moigagoo/nimconf2024/tree/develop/demo)
- Kraut: [github.com/moigagoo/kraut](https://github.com/moigagoo/kraut)
- Sauer: [github.com/moigagoo/sauer](https://github.com/moigagoo/sauer)
- Karkas: [karkas.nim.town](https://karkas.nim.town)
"""

    footer """
Slides online: [moigagoo.github.io/nimconf2024/nimconf2024.html](https://moigagoo.github.io/nimconf2024/nimconf2024.html)

Created with [nimiSlides](https://github.com/HugoGranstrom/nimiSlides)
"""

    speakerNote """
And this is the end of my talk! Here are some links to help you expore the topic further:
- Cannon chat web app UI is created with Nim entirely using the tools described in the presentation.
- You'll find the complete demo app code in the presentation repo on GitHub.
- Finally, here're the links to Kraut, Sauer, and Karkas. Please use them, send PR, and report issues.

Thanks!
"""

