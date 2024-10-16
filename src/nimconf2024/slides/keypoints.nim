import nimib, nimiSlides


template slide* =
  slide:
    nbText """
## Key Points

1.  [**Karax**](https://github.com/karaxnim/karax) is a great framework: fast, lightweight, stable. But it lacks some sugar, namely routing and components.

1.  [**Kraut**](https://github.com/moigagoo/kraut) is the missing routing layer for Karax.
    -   [**Sauer**](https://github.com/moigagoo/sauer) is a helper CLI tool that makes adding routes trivial.

1.  [**Karkas**](https://karkas.nim.town/) is the missing component and layouting layer for Karax.
"""

    speakerNote """
First off, Nim has had a React-like framework for ages, called Karax. It's a lean, robust, and mature framework. It produces tiny bundles and is production-ready. However, to compete against React, it lacks some sugar to make a developer's life easier. To me, the most critical ones were routing and components.

This is why I wrote Kraut (along with its companion app Sauer) and Karkas—respectively, the missing routing and component layers for Karax.
"""

