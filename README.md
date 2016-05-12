# HHNavigationController

<img src="https://raw.githubusercontent.com/shuoshi/HHNavigationController/master/readme/nav.gif" width="200">

Intro

A customize navigation controller to hide navigation bar when push and pop viewcontroller.
When using UINavigationController to push or pop a controller which navBar is hidden, the effect
of switching the bar is so poor. To improve this effect, I add a fake navBar to the controller
which navBar is not hidden.

中文介绍

iOS的navigationBar在透明和非透明切换时效果非常丑陋，原因在于实现切换viewController时
两个viewController使用了同一个navigationBar，只能同时透明或者非透明。想要解决这个问题
其实也很简单，就是在切换的时候判断是否需要顶部透明，对于非透明的viewController，在顶部
添加一个假navigationBar就可以了
