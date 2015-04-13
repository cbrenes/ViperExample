//
//  CBAddDataManager.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBAddDataManager.h"
#import "CBSingleton.h"
#import "CBCategory.h"
#import "CBManagedCategoryNews.h"
@interface CBAddDataManager()
@property (nonatomic,strong) CBSingleton *singletonObject;
@end

@implementation CBAddDataManager

- (instancetype)init {
    if (self = [super init]) {
        _singletonObject = [CBSingleton shareCBSingleton];
    }
    return self;
}


- (void)addNewCategory:(CBCategory *)categoryEntity counter:(int)counter{
    [CBManagedCategoryNews categoryWithName:categoryEntity.name context:self.singletonObject.model.context counter:counter];
    [self.singletonObject.model saveWithErrorBlock:^(NSError *error) {
        if (!error) {
            NSLog(@"An error was ocurring in Category save method");
        }
        
    }];

}


@end
