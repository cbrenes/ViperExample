#import "_CBManagedNews.h"

@interface CBManagedNews : _CBManagedNews {}
// Custom logic goes here.


+(instancetype)newsWithTitle:(NSString*)titleNews descriptionNews:(NSString*)descriptionNews categoryObject:(CBManagedCategoryNews*)categoryObject  context:(NSManagedObjectContext*)context;

@end
