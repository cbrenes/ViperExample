//
//  CBCategoryTablePresenter.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CBCategoryTableInteractor.h"

@protocol CBCategoryTableMainView;
@class CBCategoryTableWireframe;

@interface CBCategoryTablePresenter : NSObject

@property (nonatomic, strong) id<CBCategoryTableMainView> categoryView;
@property (nonatomic, strong) CBCategoryTableWireframe *wireframe;
@property (nonatomic, strong) CBCategoryTableInteractor *interactor;

- (void)configureUserInterfaceForPresentation;
-(void)changeToNewsView:(int)categorySelected;


@end
