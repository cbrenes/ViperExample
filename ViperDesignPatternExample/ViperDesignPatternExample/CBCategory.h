//
//  CBCategory.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CBNews;
@interface CBCategory : NSObject


@property (nonatomic, strong) NSString* name;
@property (nonatomic,strong) NSSet *newsNSSet;

+ (instancetype)categoryWithName:(NSString *)name newsNSSet:(NSSet*)newsNSSet;

@end
