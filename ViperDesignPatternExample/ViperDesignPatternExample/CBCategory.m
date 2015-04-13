//
//  CBCategory.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBCategory.h"

@implementation CBCategory

+ (instancetype)categoryWithName:(NSString *)name newsNSSet:(NSSet*)newsNSSet{
    CBCategory *categoryObject = [self new];
    categoryObject.name = name;
    categoryObject.newsNSSet = newsNSSet;
    return categoryObject;
}


@end
