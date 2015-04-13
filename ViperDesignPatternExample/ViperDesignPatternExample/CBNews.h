//
//  CBNews.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CBNews : NSObject

@property(nonatomic,strong) NSString *descriptionNews;
@property(nonatomic,strong) NSString *modificationDate;
@property(nonatomic,strong) NSString *titleNews;


+ (instancetype)newsWithTitle:(NSString *)titleNews descriptionNews:(NSString*)descriptionNews;


@end
