# UIScrollViewContentAccessors

Category for UIScrollView which make easier to access UIScrollView's content properties in iOS.

Use

```objective-c
scrollView.contentInsetTop = 150;
```

to change scrollView.contentInset.top instead of

```objective-c
UIEdgeInset newInset = scrollView.contentInset;
newInset.top = 150;
scrollView.contentInset = newInset;
```

You can access contentOffsetX, contentOffsetY, contentInsetTop, contentInsetLeft, contentInsetBottom, contentInsetRight, contentWidth or contentHeight like properties.

------------------------------------
Adding UIScrollViewContentAccessors to your project
====================================

From CocoaPods
------------

Add `pod 'UIScrollViewContentAccessors'` to your Podfile.

Source files
------------

Another way to add the UIScrollViewContentAccessors to your project is to directly add the source files and resources to your project.

1. Download the [latest code version](https://github.com/Antondomashnev/UIScrollViewContentAccessors/downloads) or add the repository as a git submodule to your git-tracked project. 
2. Open your project in Xcode, than drag and drop UIScrollView+ContentAccessors.h and UIScrollView+ContentAccessors.m files onto your project (use the "Product Navigator view"). Make sure to select Copy items when asked if you extracted the code archive outside of your project. 
3. Include ADGraphView wherever you need it with `#import "UIScrollView+ContentAccessors.h"`.
