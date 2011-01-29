// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LCYWorkout.m instead.

#import "_LCYWorkout.h"

@implementation LCYWorkoutID
@end

@implementation _LCYWorkout

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Workout" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Workout";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Workout" inManagedObjectContext:moc_];
}

- (LCYWorkoutID*)objectID {
	return (LCYWorkoutID*)[super objectID];
}




@dynamic date;






@dynamic setsOfExcercise;

	
- (NSMutableSet*)setsOfExcerciseSet {
	[self willAccessValueForKey:@"setsOfExcercise"];
	NSMutableSet *result = [self mutableSetValueForKey:@"setsOfExcercise"];
	[self didAccessValueForKey:@"setsOfExcercise"];
	return result;
}
	



@end
