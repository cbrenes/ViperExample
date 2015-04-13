//
//  CBCategoryTablePresenter.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBCategoryTablePresenter.h"
#import "CBCategoryTableMainView.h"
#import "CBCategoryTableWireframe.h"


@implementation CBCategoryTablePresenter

#pragma mark - Public
- (void)configureUserInterfaceForPresentation{
    NSMutableArray *categoryArray = [self.interactor getAllCategories];
    [self.categoryView setTableView:categoryArray];
}


-(void)changeToNewsView:(int)categorySelected{
    [self.wireframe showNewsView];
}


@end
