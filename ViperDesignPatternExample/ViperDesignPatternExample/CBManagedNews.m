#import "CBManagedNews.h"
#import "CBManagedCategoryNews.h"
@interface CBManagedNews ()

// Private interface goes here.

@end

@implementation CBManagedNews

// Custom logic goes here.

+(instancetype)newsWithTitle:(NSString*)titleNews descriptionNews:(NSString*)descriptionNews categoryObject:(CBManagedCategoryNews*)categoryObject  context:(NSManagedObjectContext*)context{
    
    CBManagedNews *newsObject = [NSEntityDescription insertNewObjectForEntityForName:[CBManagedNews entityName] inManagedObjectContext:context];
    
    newsObject.titleNews=titleNews;
    newsObject.descriptionNews=descriptionNews;
    newsObject.modificationDate=[NSDate date];
    
    [categoryObject addNewsObject:newsObject];
    
    return newsObject;
}


@end
