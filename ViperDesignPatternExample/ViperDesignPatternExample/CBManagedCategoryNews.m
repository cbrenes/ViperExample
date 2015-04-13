#import "CBManagedCategoryNews.h"

@interface CBManagedCategoryNews ()

// Private interface goes here.

@end

@implementation CBManagedCategoryNews

+(instancetype)categoryWithName:(NSString*)name context:(NSManagedObjectContext*)context{
    CBManagedCategoryNews *categoryObject = [NSEntityDescription insertNewObjectForEntityForName:[CBManagedCategoryNews entityName] inManagedObjectContext:context];
    
    categoryObject.name = name;
    return categoryObject;
}



@end
