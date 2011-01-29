// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LCYExercise.m instead.

#import "_LCYExercise.h"

@implementation LCYExerciseID
@end

@implementation _LCYExercise

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Exercise" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Exercise";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Exercise" inManagedObjectContext:moc_];
}

- (LCYExerciseID*)objectID {
	return (LCYExerciseID*)[super objectID];
}




@dynamic name;






@dynamic performedInSets;

	
- (NSMutableSet*)performedInSetsSet {
	[self willAccessValueForKey:@"performedInSets"];
	NSMutableSet *result = [self mutableSetValueForKey:@"performedInSets"];
	[self didAccessValueForKey:@"performedInSets"];
	return result;
}
	



@end
