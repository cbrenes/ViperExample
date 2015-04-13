//
//  CBNewsTableWireframe.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBNewsTableWireframe.h"
#import "CBNewsTableViewController.h"
#import "CBNewsTablePresenter.h"

#pragma mark - Constants
static NSString * const NEWS_TABLE_VIEW_IDENTIFIER = @"CBNewsTableViewController";

@implementation CBNewsTableWireframe



#pragma mark - Public
- (void)presentInterfaceFromController:(UINavigationController *)navigationController{
    CBNewsTableViewController *newsTableViewController = [self newsTableViewControllerFromStoryboard];
    newsTableViewController.presenter = self.presenter;
    self.presenter.newsView = newsTableViewController;
    [navigationController pushViewController:newsTableViewController animated:YES];
}

#pragma mark - Private
- (CBNewsTableViewController *)newsTableViewControllerFromStoryboard {
    UIStoryboard *storyboard = [self mainStoryboard];
    CBNewsTableViewController *tableViewController = [storyboard instantiateViewControllerWithIdentifier:NEWS_TABLE_VIEW_IDENTIFIER];
    return tableViewController;
}

- (UIStoryboard *)mainStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    return storyboard;
}







@end
