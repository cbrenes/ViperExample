//
//  CBNewsTablePresenter.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBNewsTablePresenter.h"
#import "CBNewsTableMainView.h"
#import "CBNewsTableWireframe.h"

@implementation CBNewsTablePresenter

#pragma mark - Public
- (void)configureUserInterfaceForPresentation{
    [self.newsView setTableView:nil];

}


@end
