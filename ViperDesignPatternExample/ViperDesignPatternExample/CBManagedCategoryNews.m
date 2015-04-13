#import "CBManagedCategoryNews.h"
#import "CBManagedNews.h"

@interface CBManagedCategoryNews ()

// Private interface goes here.

@end

@implementation CBManagedCategoryNews

+(instancetype)categoryWithName:(NSString*)name context:(NSManagedObjectContext*)context counter:(int)counter{
    CBManagedCategoryNews *categoryObject = [NSEntityDescription insertNewObjectForEntityForName:[CBManagedCategoryNews entityName] inManagedObjectContext:context];
    
    categoryObject.name = name;
    [CBManagedCategoryNews createDefaultNewsCategory:categoryObject context:context counter:counter];
    return categoryObject;
}


#pragma mark -Create News
+(void)createDefaultNewsCategory:(CBManagedCategoryNews*)categoryObject context:(NSManagedObjectContext*)context counter:(int)counter{
    
    NSString *title=[NSString stringWithFormat:@"Title #%d",counter];
    NSString *description=@"Description";
    
    [CBManagedNews newsWithTitle:title descriptionNews:description categoryObject:categoryObject context:context];
    
    
}



@end
