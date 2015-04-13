// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CBManagedNews.h instead.

#import <CoreData/CoreData.h>

extern const struct CBManagedNewsAttributes {
	__unsafe_unretained NSString *descriptionNews;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *titleNews;
} CBManagedNewsAttributes;

extern const struct CBManagedNewsRelationships {
	__unsafe_unretained NSString *categoryNews;
} CBManagedNewsRelationships;

@class CBManagedCategoryNews;

@interface CBManagedNewsID : NSManagedObjectID {}
@end

@interface _CBManagedNews : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CBManagedNewsID* objectID;

@property (nonatomic, strong) NSString* descriptionNews;

//- (BOOL)validateDescriptionNews:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modificationDate;

//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* titleNews;

//- (BOOL)validateTitleNews:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) CBManagedCategoryNews *categoryNews;

//- (BOOL)validateCategoryNews:(id*)value_ error:(NSError**)error_;

@end

@interface _CBManagedNews (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveDescriptionNews;
- (void)setPrimitiveDescriptionNews:(NSString*)value;

- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;

- (NSString*)primitiveTitleNews;
- (void)setPrimitiveTitleNews:(NSString*)value;

- (CBManagedCategoryNews*)primitiveCategoryNews;
- (void)setPrimitiveCategoryNews:(CBManagedCategoryNews*)value;

@end
