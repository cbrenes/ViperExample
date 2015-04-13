//
//  CBNewsTableViewController.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CBNewsTableMainView.h"
@class CBNewsTablePresenter;

@interface CBNewsTableViewController : UITableViewController<CBNewsTableMainView>

@property (nonatomic, strong) CBNewsTablePresenter *presenter;

@end
