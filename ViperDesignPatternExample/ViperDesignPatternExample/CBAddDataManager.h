//
//  CBAddDataManager.h
//  ViperDesignPatternExample
//
//  Created by Cesar Brenes on 4/11/15.
//  Copyright (c) 2015 Cesar Brenes. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CBCategory;

@interface CBAddDataManager : NSObject

- (void)addNewCategory:(CBCategory *)categoryEntity counter:(int)counter;

@end
