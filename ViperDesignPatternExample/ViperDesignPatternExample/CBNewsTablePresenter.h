//
//  CBNewsTablePresenter.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

@import UIKit;
#import <Foundation/Foundation.h>
#import "CBNewsTableInteractor.h"

@protocol CBNewsTableMainView;
@class CBNewsTableWireframe;


@interface CBNewsTablePresenter : NSObject


@property (nonatomic, strong) id<CBNewsTableMainView> newsView;
@property (nonatomic, strong) CBNewsTableWireframe *wireframe;
@property (nonatomic, strong) CBNewsTableInteractor *interactor;

-(void)configureUserInterfaceForPresentation;

@end
