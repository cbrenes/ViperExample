//
//  CBCategoryTableWireframe.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//


@import UIKit;
#import <Foundation/Foundation.h>
@class CBCategoryTablePresenter;


@interface CBCategoryTableWireframe : NSObject
@property (nonatomic, strong) CBCategoryTablePresenter *presenter;
- (void)presentInterfaceFromWindow:(UIWindow *)window;

- (void)showNewsView:(int)index;

@end
