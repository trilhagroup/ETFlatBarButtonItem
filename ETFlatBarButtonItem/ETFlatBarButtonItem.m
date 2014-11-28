//
//  ETFlatBarButtonItem.m
//  InEvent
//
//  Created by Pedro Góes on 06/03/13.
//  Copyright (c) 2013 Pedro Góes. All rights reserved.
//

#import "ETFlatBarButtonItem.h"

@interface ETFlatBarButtonItem ()

@property (strong, nonatomic) UIButton *leftButton;

@end

@implementation ETFlatBarButtonItem

#pragma mark - Setters

- (void)setCoolImage:(UIImage *)coolImage {
    _coolImage = coolImage;
    
    [_leftButton setImage:_coolImage forState:UIControlStateNormal];
}

#pragma mark - Custom Button

- (id)initCustomButtonWithImage:(UIImage *)image frame:(CGRect)frame insets:(UIEdgeInsets)insets target:(id)target action:(SEL)action {
    
    self.coolImage = image;
    self.coolFrame = frame;
    self.coolInsets = insets;
    self.coolTarget = target;
    self.coolSelector = action;
    
    _leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_leftButton setImage:self.coolImage forState:UIControlStateNormal];
    _leftButton.frame = self.coolFrame;
    _leftButton.contentEdgeInsets = self.coolInsets;
    [_leftButton addTarget:self.coolTarget action:self.coolSelector forControlEvents:UIControlEventTouchUpInside];
    
    return [self initWithCustomView:_leftButton];
}

@end
