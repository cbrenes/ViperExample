//
//  CBSingleton.h
//  Created by Cesar Brenes on 4/6/15.
//

#import <Foundation/Foundation.h>
#import "CBSimpleCoreDataStack.h"

@interface CBSingleton : NSObject


+(instancetype)shareCBSingleton;
@property (strong, nonatomic) CBSimpleCoreDataStack *model;



@end
