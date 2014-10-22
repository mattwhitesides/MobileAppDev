//
//  ViewController.m
//  ObjectiveC101
//
//  Created by Matthew Whitesides on 9/23/14.
//  Copyright (c) 2014 Matthew Whitesides. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSArray *lightGreyViewConstraints;

@end

@implementation ViewController

- (void) loadView {
   // self.view = [[UIView alloc] initWithFrame:[[UIView ]]
}

- (UIView *)lightGreyView {
    if (!_lightGreyView) {
        _lightGreyView = [[UIView] initWithFrame:CGRectZero];
        [_lightGreyView setTranslatesAutoresizingMaskIntoConstraints:NO];
        _lightGreyView.backgroundColor = [UIColor lightGrayColor];
    }
    
    return _lightGreyView;
}

- (NSArray*) lightGreyViewConstraints {
    if (!_lightGreyViewConstraints) {
        _lightGreyViewConstraints = @[
                                      [NSLayoutConstraint constraintWithItem:_lightGreyViewConstraints attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:0],
                                      [NSLayoutConstraint constraintWithItem:_lightGreyViewConstraints attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeRight multiplier:1 constant:0],
                                      [NSLayoutConstraint constraintWithItem:_lightGreyViewConstraints attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeft multiplier:1 constant:0],
                                      [NSLayoutConstraint constraintWithItem:_lightGreyViewConstraints attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeBottom multiplier:1 constant:0]
                                      ];
        
    }
}
                 
                 - (UIButton*)submitButton {
                     if (!_submitButton) {
                         _submitButton = [[UIButton alloc] initWithFrame:CGRectZero];
                         [_submitButton setTranslatesAutoresizingMaskIntoConstraints:false];
                         [_submitButton setTitle:@"submit" forState:UIControlStateApplication];
                     }
                 }

@end
