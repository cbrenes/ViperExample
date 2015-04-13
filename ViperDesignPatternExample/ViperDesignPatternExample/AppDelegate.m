//
//  AppDelegate.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "AppDelegate.h"
#import "CBSingleton.h"
#import "CBCategoryTableViewController.h"
#import "CBCategoryTablePresenter.h"
#import "CBCategoryTableWireframe.h"
#import "CBManagedCategoryNews.h"

@interface AppDelegate ()
@property (nonatomic, strong) CBCategoryTableWireframe *categoryWireframe;
@property (nonatomic, strong)  CBSingleton *singletonObject;
@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [self configureCoreDataModel];
    [self configureDependencies];
    [self.categoryWireframe presentInterfaceFromWindow:self.window];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


//FUNCTION TO CONFIGURE THE ACCESS TO CORE DATA MODEL
-(void)configureCoreDataModel{
    self.singletonObject = [CBSingleton shareCBSingleton];
    self.singletonObject.model = [CBSimpleCoreDataStack coreDataStackWithModelName:@"Model"];
}


- (void)configureDependencies {
    CBCategoryTableViewController *categoryController = [CBCategoryTableViewController new];
    CBCategoryTablePresenter *categoryPresenter = [CBCategoryTablePresenter new];
    CBCategoryTableWireframe *categoryWireframe = [CBCategoryTableWireframe new];
    CBCategoryTableInteractor *categoryInteractor = [CBCategoryTableInteractor new];
    categoryController.presenter = categoryPresenter;
    categoryPresenter.wireframe = categoryWireframe;
    categoryWireframe.presenter = categoryPresenter;
    categoryPresenter.interactor = categoryInteractor;
    self.categoryWireframe = categoryWireframe;
}



@end