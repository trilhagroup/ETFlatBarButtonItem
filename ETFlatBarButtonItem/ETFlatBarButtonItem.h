//
//  ETFlatBarButtonItem.h
//  InEvent
//
//  Created by Pedro Góes on 06/03/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ETFlatBarButtonItem : UIBarButtonItem

@property (strong, nonatomic) UIImage *coolImage;
@property (assign, nonatomic) CGRect coolFrame;
@property (assign, nonatomic) UIEdgeInsets coolInsets;
@property (assign, nonatomic) id coolTarget;
@property (assign, nonatomic) SEL coolSelector;

- (id)initCustomButtonWithImage:(UIImage *)image frame:(CGRect)frame insets:(UIEdgeInsets)insets target:(id)target action:(SEL)action;

@end
