// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LCYSet.m instead.

#import "_LCYSet.h"

@implementation LCYSetID
@end

@implementation _LCYSet

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Set" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Set";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Set" inManagedObjectContext:moc_];
}

- (LCYSetID*)objectID {
	return (LCYSetID*)[super objectID];
}




@dynamic orderInWorkout;



- (int)orderInWorkoutValue {
	NSNumber *result = [self orderInWorkout];
	return [result intValue];
}

- (void)setOrderInWorkoutValue:(int)value_ {
	[self setOrderInWorkout:[NSNumber numberWithInt:value_]];
}

- (int)primitiveOrderInWorkoutValue {
	NSNumber *result = [self primitiveOrderInWorkout];
	return [result intValue];
}

- (void)setPrimitiveOrderInWorkoutValue:(int)value_ {
	[self setPrimitiveOrderInWorkout:[NSNumber numberWithInt:value_]];
}





@dynamic repititions;



- (int)repititionsValue {
	NSNumber *result = [self repititions];
	return [result intValue];
}

- (void)setRepititionsValue:(int)value_ {
	[self setRepititions:[NSNumber numberWithInt:value_]];
}

- (int)primitiveRepititionsValue {
	NSNumber *result = [self primitiveRepititions];
	return [result intValue];
}

- (void)setPrimitiveRepititionsValue:(int)value_ {
	[self setPrimitiveRepititions:[NSNumber numberWithInt:value_]];
}





@dynamic exercise;

	

@dynamic workout;

	



@end
