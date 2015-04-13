//
//  CBCategoryTableViewController.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBCategoryTableViewController.h"
#import "CBCategoryTablePresenter.h"
#import "CBCategoryDisplayItem.h"

#pragma mark - Constants
static const int NUMBER_OF_SECTION = 1;
static  NSString *CELL_INDENTIFIER = @"CELL";

@interface CBCategoryTableViewController ()
@property (nonatomic,strong) NSMutableArray *tableArray;
@end

@implementation CBCategoryTableViewController

#pragma mark - UITableViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    [self.presenter configureUserInterfaceForPresentation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
    
    CBCategoryDisplayItem *categoryItem = [self.tableArray  objectAtIndex:indexPath.row];
    cell.textLabel.text = categoryItem.name;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.presenter changeToNewsView:(int)indexPath.row];
}


#pragma mark - CBCategoryTableMainView

- (void)setTableView:(NSMutableArray *)categoryArray{
    self.tableArray = [[NSMutableArray alloc] initWithArray:categoryArray];
    [self.tableView reloadData];
}







@end
