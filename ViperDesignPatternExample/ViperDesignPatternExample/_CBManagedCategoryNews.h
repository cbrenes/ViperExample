// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CBManagedCategoryNews.h instead.

#import <CoreData/CoreData.h>

extern const struct CBManagedCategoryNewsAttributes {
	__unsafe_unretained NSString *name;
} CBManagedCategoryNewsAttributes;

extern const struct CBManagedCategoryNewsRelationships {
	__unsafe_unretained NSString *news;
} CBManagedCategoryNewsRelationships;

@class CBManagedNews;

@interface CBManagedCategoryNewsID : NSManagedObjectID {}
@end

@interface _CBManagedCategoryNews : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) CBManagedCategoryNewsID* objectID;

@property (nonatomic, strong) NSString* name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *news;

- (NSMutableSet*)newsSet;

@end

@interface _CBManagedCategoryNews (NewsCoreDataGeneratedAccessors)
- (void)addNews:(NSSet*)value_;
- (void)removeNews:(NSSet*)value_;
- (void)addNewsObject:(CBManagedNews*)value_;
- (void)removeNewsObject:(CBManagedNews*)value_;

@end

@interface _CBManagedCategoryNews (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;

- (NSMutableSet*)primitiveNews;
- (void)setPrimitiveNews:(NSMutableSet*)value;

@end
