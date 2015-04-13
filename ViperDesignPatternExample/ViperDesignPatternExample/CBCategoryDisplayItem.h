//
//  CBCategoryDisplayItem.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBCategoryDisplayItem : NSObject

@property (nonatomic,strong) NSString *name;


+ (instancetype)categoryDisplayItemWithName:(NSString *)name;


@end
