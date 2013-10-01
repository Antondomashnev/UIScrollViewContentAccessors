# UIScrollViewContentAccessors

Category for UIScrollView which make easier to access UIScrollView's content properties in iOS.

Use

```objective-c
scrollView.contentInsetTop = 150;
```

to change scrollView contentInset.top instead of

```objective-c
UIEdgeInset newInset = scrollView.contentInset;
newInset.top = 150;
scrollView.contentInset = newInset;
```

You can access contentOffsetX, contentOffsetY, contentInsetTop, contentInsetLeft, contentInsetBottom, contentInsetRight, contentWidth or contentHeight like properties.
