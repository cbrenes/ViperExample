// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CBManagedCategoryNews.m instead.

#import "_CBManagedCategoryNews.h"

const struct CBManagedCategoryNewsAttributes CBManagedCategoryNewsAttributes = {
	.name = @"name",
};

const struct CBManagedCategoryNewsRelationships CBManagedCategoryNewsRelationships = {
	.news = @"news",
};

@implementation CBManagedCategoryNewsID
@end

@implementation _CBManagedCategoryNews

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"CategoryNews" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"CategoryNews";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"CategoryNews" inManagedObjectContext:moc_];
}

- (CBManagedCategoryNewsID*)objectID {
	return (CBManagedCategoryNewsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic name;

@dynamic news;

- (NSMutableSet*)newsSet {
	[self willAccessValueForKey:@"news"];

	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"news"];

	[self didAccessValueForKey:@"news"];
	return result;
}

@end

