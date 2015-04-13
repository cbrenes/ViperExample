//
//  CBNews.m
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import "CBNews.h"

@implementation CBNews


+ (instancetype)newsWithTitle:(NSString *)titleNews descriptionNews:(NSString*)descriptionNews{
    
    CBNews *newsObject = [self new];
    newsObject.descriptionNews = descriptionNews;
    newsObject.titleNews = titleNews;
    return newsObject;
}



@end
