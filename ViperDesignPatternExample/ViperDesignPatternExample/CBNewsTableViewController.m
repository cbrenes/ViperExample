//
//  CBNewsTableViewController.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBNewsTableViewController.h"
#import "CBNewsTablePresenter.h"

#pragma mark - Constants
static const int NUMBER_OF_SECTION = 1;
static  NSString *CELL_INDENTIFIER = @"CELL";


@interface CBNewsTableViewController ()
@property (nonatomic,strong) NSMutableArray *tableArray;
@end



@implementation CBNewsTableViewController


#pragma mark - UITableViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"News";
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    [self.presenter configureUserInterfaceForPresentation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return NUMBER_OF_SECTION;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_INDENTIFIER];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_INDENTIFIER];
    }
    
    return cell;
}
@end
