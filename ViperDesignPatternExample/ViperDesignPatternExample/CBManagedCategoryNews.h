#import "_CBManagedCategoryNews.h"

@interface CBManagedCategoryNews : _CBManagedCategoryNews {}
// Custom logic goes here.



+(instancetype)categoryWithName:(NSString*)name context:(NSManagedObjectContext*)context counter:(int)counter;

@end
