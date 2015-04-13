//
//  CBCategoryTableViewController.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CBCategoryTableMainView.h"
@class CBCategoryTablePresenter;

@interface CBCategoryTableViewController : UITableViewController<CBCategoryTableMainView>


@property (nonatomic, strong) CBCategoryTablePresenter *presenter;

@end
