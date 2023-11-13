# autoroute_test

A test Flutter project to investigate a problem with AutoRoute.

In the main branch a first implementation of a responsive app that adapts to the screen size.

A navigation rail is displayed in desktop, laptop or tablet mode. The navigation rail is more or less short depending on the size of the window.

In mobile mode a bottom navigation bar is displayed.

In the main branch each time a breakpoint is reached (desktop->laptop->tablet->mobile) a new scaffold is displayed with the proper design. But the tabsRouter is resetted and all the navigation history is lost.

In the "better" branch, instead of displaying a new Scaffold depending on the width of the window, a single scaffold with conditional display is built.

In this case I can resize without losing history as long as I keep a navigation bar.

But when I reached the mobile size, then again the tabsRouter is resetted and everything is lost.

It's better than the first case but not perfect.

I've implemented the main branch with go router and beamer (not part of this repository) and there is no problem when redimensionning. But for other reasons I don't want to use these packages, as auto_route is better for all my other use cases.

## Getting Started

Check out this project and run it. In the first tab navigate by clicking the link.
Resize the app window. The display is responsive but the tabsRouter is resetted and the navigation history is lost (with the main branch each time a responsive breakpoint is passed, int the better branch only when transitioning from/to m)
