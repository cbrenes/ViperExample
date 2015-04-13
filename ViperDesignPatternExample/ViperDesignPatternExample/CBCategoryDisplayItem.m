//
//  CBCategoryDisplayItem.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBCategoryDisplayItem.h"

@implementation CBCategoryDisplayItem


+ (instancetype)categoryDisplayItemWithName:(NSString *)name{
    CBCategoryDisplayItem *category = [CBCategoryDisplayItem new];
    category.name = name;
    return category;
}

@end
