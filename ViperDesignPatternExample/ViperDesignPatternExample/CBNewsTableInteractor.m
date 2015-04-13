//
//  CBNewsTableInteractor.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBNewsTableInteractor.h"
#import "CBGetDataManager.h"
#import "CBAddDataManager.h"



@interface CBNewsTableInteractor()
@property (nonatomic,strong) CBAddDataManager *addDataManager;
@property (nonatomic,strong) CBGetDataManager *getDataManager;
@end



@implementation CBNewsTableInteractor



-(instancetype)init {
    if (self = [super init]) {
        _addDataManager = [CBAddDataManager new];
        _getDataManager = [CBGetDataManager new];
    }
    return self;
}


-(NSArray*)getNewsPerCategory{
    return [self.getDataManager getNewsPerCategory:self.categorySelected];
}

@end
