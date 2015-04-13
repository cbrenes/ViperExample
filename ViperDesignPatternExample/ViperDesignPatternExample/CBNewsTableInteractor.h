//
//  CBNewsTableInteractor.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBNewsTableInteractor : NSObject

@property(nonatomic) int categorySelected;

-(NSArray*)getNewsPerCategory;


@end
