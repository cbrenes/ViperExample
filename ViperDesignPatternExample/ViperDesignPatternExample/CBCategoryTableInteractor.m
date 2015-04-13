//
//  CBCategoryTableInteractor.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBCategoryTableInteractor.h"
#import "CBSingleton.h"
#import "CBCategory.h"
#import "CBAddDataManager.h"
#import "CBGetDataManager.h"
#import "CBCategoryDisplayItem.h"
#import "NSArray+HOM.h"

static const int ZERO = 0;

@interface CBCategoryTableInteractor()
    @property (nonatomic,strong) CBAddDataManager *addDataManager;
    @property (nonatomic,strong) CBGetDataManager *getDataManager;
@end

@implementation CBCategoryTableInteractor


- (instancetype)init {
    if (self = [super init]) {
        _addDataManager = [CBAddDataManager new];
        _getDataManager = [CBGetDataManager new];
    }
    return self;
}

-(NSMutableArray*)getAllCategories{
    NSArray *result = [[self loadAllCategories] arrayFromObjectsCollectedWithBlock:^id(CBCategory *categoryObject) {
        return [CBCategoryDisplayItem categoryDisplayItemWithName:categoryObject.name];
    }];
    return [[NSMutableArray alloc] initWithArray:result];
}



#pragma mark -Create categories
-(void)createDefaultCategories{
    CBCategory *firstCategory = [CBCategory categoryWithName:@"Sports" newsNSSet:nil];
    [self.addDataManager addNewCategory:firstCategory counter:1];

    
    CBCategory *secondCategory = [CBCategory categoryWithName:@"technology" newsNSSet:nil];
    [self.addDataManager addNewCategory:secondCategory counter:2];
    CBCategory *ThirdCategory = [CBCategory categoryWithName:@"Economy" newsNSSet:nil];
    [self.addDataManager addNewCategory:ThirdCategory counter:3];
    CBCategory *fourthCategory = [CBCategory categoryWithName:@"Travel" newsNSSet:nil];
    [self.addDataManager addNewCategory:fourthCategory counter:4];
    CBCategory *fifthCategory = [CBCategory categoryWithName:@"Events" newsNSSet:nil];
    [self.addDataManager addNewCategory:fifthCategory counter:5];
}



-(NSArray*)loadAllCategories{
    NSArray *result = [self.getDataManager getAllCategories];
    if (result.count>ZERO) {
        return result;
    }
    else{
        [self createDefaultCategories];
        result = [self.getDataManager getAllCategories];
        return result;
    }
}






@end
