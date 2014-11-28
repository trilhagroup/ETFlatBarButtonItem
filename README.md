ETFlatBarButtonItem
========
Sometimes Apple's stock UIBarButtonItem doesn't give you enough flexibility to change some of its design, so **ETFlatBarButtonItem** is a simple enough to allow you to change anything you want.

Installation
--------
Clone this repo and copy the folder **ETFlatBarButtonItem** into your Xcode project.

How-to
--------

![image](demo.png)

### Programmatically

Programmatically, just use the following method:

```
self.navigationItem.leftBarButtonItem = [[ETFlatBarButtonItem alloc] initCustomButtonWithImage:[UIImage imageNamed:@"cancel-32"] frame:CGRectMake(-6, 0, 48.0, 36.0) insets:UIEdgeInsetsMake(5.0, 11.0, 5.0, 11.0) target:self action:@selector(dismissController)];
```


### Getters

There are some properties you can have access to. Accessible at anytime, just KVO them. 

- `@property (strong, nonatomic) UIImage *coolImage;`
- `@property (assign, nonatomic) CGRect coolFrame;`
- `@property (assign, nonatomic) UIEdgeInsets coolInsets;`
- `@property (assign, nonatomic) id coolTarget;`
- `@property (assign, nonatomic) SEL coolSelector;`

Support
--------
Just open an issue on Github and we'll get to it as soon as possible.

About
--------
**ETFlatBarButtonItem** is brought to you by Trilha.
