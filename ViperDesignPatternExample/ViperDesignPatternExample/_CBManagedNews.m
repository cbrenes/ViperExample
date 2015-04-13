// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to CBManagedNews.m instead.

#import "_CBManagedNews.h"

const struct CBManagedNewsAttributes CBManagedNewsAttributes = {
	.descriptionNews = @"descriptionNews",
	.modificationDate = @"modificationDate",
	.titleNews = @"titleNews",
};

const struct CBManagedNewsRelationships CBManagedNewsRelationships = {
	.categoryNews = @"categoryNews",
};

@implementation CBManagedNewsID
@end

@implementation _CBManagedNews

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"News" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"News";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"News" inManagedObjectContext:moc_];
}

- (CBManagedNewsID*)objectID {
	return (CBManagedNewsID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic descriptionNews;

@dynamic modificationDate;

@dynamic titleNews;

@dynamic categoryNews;

@end

