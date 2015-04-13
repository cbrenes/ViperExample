//
//  CBGetDataManager.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBGetDataManager.h"
#import "CBSingleton.h"
#import "CBCategory.h"
#import "CBManagedCategoryNews.h"
#import "NSArray+HOM.h"
#import "CBNews.h"
#import "CBManagedNews.h"

@interface CBGetDataManager()
@property (nonatomic,strong) CBSingleton *singletonObject;
@end

@implementation CBGetDataManager


- (instancetype)init {
    if (self = [super init]) {
        _singletonObject = [CBSingleton shareCBSingleton];
    }
    return self;
}


-(NSArray*)getAllCategories{
        NSFetchRequest * req = [NSFetchRequest fetchRequestWithEntityName:[CBManagedCategoryNews entityName]];
        NSArray *results = nil;
        results = [self.singletonObject.model executeRequest:req withError:^(NSError *error){
            NSLog(@"Results: \n %@", results);
        }];
    
    return [self categoriesFromDataStoreEntries:results];
}


- (NSArray *)categoriesFromDataStoreEntries:(NSArray *)entries
{
    return [entries arrayFromObjectsCollectedWithBlock:^id(CBManagedCategoryNews *categoryNews) {
        return [CBCategory categoryWithName:categoryNews.name newsNSSet:categoryNews.news];
    }];
}



-(NSArray*)getNewsPerCategory:(int)categorySelected{
    NSArray *categories = [self getAllCategories];
    CBCategory *category = [categories objectAtIndex:categorySelected];
    return [self newsFromDataStoreEntries:[category.newsNSSet allObjects]];
}


- (NSArray *)newsFromDataStoreEntries:(NSArray *)entries
{
    return [entries arrayFromObjectsCollectedWithBlock:^id(CBManagedNews *news) {
        return [CBNews newsWithTitle:news.titleNews descriptionNews:news.descriptionNews];
    }];
}




@end
