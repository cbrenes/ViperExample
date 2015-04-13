//
//  CBCategoryTableWireframe.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBCategoryTableWireframe.h"
#import "CBCategoryTableViewController.h"
#import "CBCategoryTablePresenter.h"
#import "CBNewsTableViewController.h"
#import "CBNewsTablePresenter.h"
#import "CBNewsTableWireframe.h"
#import "CBNewsTableInteractor.h"

#pragma mark - Constants
static NSString * const CATEGORY_TABLE_VIEW_IDENTIFIER = @"CBCategoryTableViewController";

@interface CBCategoryTableWireframe()
@property (nonatomic,strong) UINavigationController *actualNavigationController;
@end


@implementation CBCategoryTableWireframe


#pragma mark - Public
- (void)presentInterfaceFromWindow:(UIWindow *)window {
    CBCategoryTableViewController *categoryTableViewController = [self CategoryTableViewControllerFromStoryboard];
    categoryTableViewController.presenter = self.presenter;
    self.presenter.categoryView = categoryTableViewController;
    [self showRootViewController:categoryTableViewController inWindow:window];

}

#pragma mark - Private
- (CBCategoryTableViewController *)CategoryTableViewControllerFromStoryboard {
    UIStoryboard *storyboard = [self mainStoryboard];
    CBCategoryTableViewController *tableViewController = [storyboard instantiateViewControllerWithIdentifier:CATEGORY_TABLE_VIEW_IDENTIFIER];
    return tableViewController;
}

- (UIStoryboard *)mainStoryboard {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    return storyboard;
}

- (void)showRootViewController:(UIViewController *)viewController inWindow:(UIWindow *)window {
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    self.actualNavigationController = navigationController;
    window.rootViewController = navigationController;
}


- (void)showNewsView {
    CBNewsTableViewController *newsController = [CBNewsTableViewController new];
    CBNewsTablePresenter *newsPresenter = [CBNewsTablePresenter new];
    CBNewsTableWireframe *newsWireframe = [CBNewsTableWireframe new];
    CBNewsTableInteractor *newsInteractor = [CBNewsTableInteractor new];
    newsController.presenter = newsPresenter;
    newsPresenter.wireframe = newsWireframe;
    newsWireframe.presenter = newsPresenter;
    newsPresenter.interactor = newsInteractor;
    [newsWireframe presentInterfaceFromController:self.actualNavigationController];
}



@end
