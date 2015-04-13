//
//  CBSingleton.m
//  Created by Cesar Brenes on 4/6/15.
//

#import "CBSingleton.h"


@implementation CBSingleton

+(instancetype)shareCBSingleton{
    static dispatch_once_t onceToken;
    static CBSingleton *shared;
    dispatch_once(&onceToken, ^{
        shared = [self new];
        
    });
    return  shared;
}

@end
