//
//  CBNewsTableWireframe.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

@import UIKit;
#import <Foundation/Foundation.h>

@class CBNewsTablePresenter;

@interface CBNewsTableWireframe : NSObject

@property (nonatomic, strong) CBNewsTablePresenter *presenter;
- (void)presentInterfaceFromController:(UINavigationController *)navigationController;

@end
