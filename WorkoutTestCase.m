//
//  WorkoutTestCase.m
//  CoreDataUnitTestExample
//
//  Created by Krishna Kotecha on 29/01/2011.
//  Copyright 2011 Krishna Kotecha. All rights reserved.
//

#import "LCYExercise.h"
#import "LCYSet.h"
#import "LCYWorkout.h"
#import "WorkoutTestCase.h"

@interface WorkoutTestCase()
- (void) asssertWorkout: (LCYWorkout *) workout hasExpectedNumberOfSets: (NSUInteger) expectedNumberOfSets;
@end


@implementation WorkoutTestCase

#pragma mark -
#pragma mark Set Up and Tear Down stuff

- (void) setUp;
{
	[super setUp];
}

- (void) tearDown;
{
	[super tearDown];
}

- (NSDictionary *) createTestData;
{	
	// create some LCYExercise objects...
	LCYExercise *situps = [LCYExercise insertWithName:@"situps" inManagedObjectContext:managedObjectContext_];
	LCYExercise *burpees = [LCYExercise insertWithName:@"burpees" inManagedObjectContext:managedObjectContext_];
	LCYExercise *squats = [LCYExercise insertWithName:@"squats" inManagedObjectContext:managedObjectContext_];
	LCYExercise *lunges = [LCYExercise insertWithName:@"lunges" inManagedObjectContext:managedObjectContext_];
	LCYExercise *bicepCurls = [LCYExercise insertWithName:@"bicepCurls" inManagedObjectContext:managedObjectContext_];
	
	// create some LCYWorkout objects...
	LCYWorkout *workout0 = [LCYWorkout insertWithDate:[NSDate date] inManagedObjectContext:managedObjectContext_];
	LCYWorkout *workout1 = [LCYWorkout insertWithDate:[NSDate date] inManagedObjectContext:managedObjectContext_];
	LCYWorkout *workout2 = [LCYWorkout insertWithDate:[NSDate date] inManagedObjectContext:managedObjectContext_];
		
	// create some LCYSets and add them to the workouts...
	{
		LCYSet *s0 = [LCYSet insertWithExercise: situps orderInWorkout:0 repititions:10 inManagedObjectContext:managedObjectContext_];
		LCYSet *s1 = [LCYSet insertWithExercise: burpees orderInWorkout:1 repititions:10 inManagedObjectContext:managedObjectContext_];
		LCYSet *s2 = [LCYSet insertWithExercise: squats orderInWorkout:2 repititions:12 inManagedObjectContext:managedObjectContext_];
		
		[workout0 addSetsOfExcerciseObject:s0];
		[workout0 addSetsOfExcerciseObject:s1];
		[workout0 addSetsOfExcerciseObject:s2];		
	}
	
	{
		LCYSet *s0 = [LCYSet insertWithExercise: bicepCurls orderInWorkout:0 repititions:8 inManagedObjectContext:managedObjectContext_];
		LCYSet *s1 = [LCYSet insertWithExercise: squats orderInWorkout:1 repititions:10 inManagedObjectContext:managedObjectContext_];
		
		[workout1 addSetsOfExcerciseObject:s0];
		[workout1 addSetsOfExcerciseObject:s1];
	}
	
	{
		LCYSet *s0 = [LCYSet insertWithExercise: burpees orderInWorkout:0 repititions:15 inManagedObjectContext:managedObjectContext_];
		LCYSet *s1 = [LCYSet insertWithExercise: situps orderInWorkout:1 repititions:5 inManagedObjectContext:managedObjectContext_];
		LCYSet *s2 = [LCYSet insertWithExercise: squats orderInWorkout:2 repititions:8 inManagedObjectContext:managedObjectContext_];
		
		[workout2 addSetsOfExcerciseObject:s0];
		[workout2 addSetsOfExcerciseObject:s1];
		[workout2 addSetsOfExcerciseObject:s2];				
	}	
		
	NSDictionary *testData = [NSDictionary dictionaryWithObjectsAndKeys:
							  // exercises....
							  situps, @"situps",
							  burpees, @"burpees",
							  squats, @"squats",
							  lunges, @"lunges",
							  bicepCurls, @"bicepCurls",
							  
							  // workouts....
							  workout0, @"workout0",
							  workout1, @"workout1",
							  workout2, @"workout2",							  
							  nil];
	
	return testData;
	
}

#pragma mark -
#pragma mark Unit tests


- (void) asssertWorkout: (LCYWorkout *) workout hasExpectedNumberOfSets: (NSUInteger) expectedNumberOfSets;
{
	STAssertEquals(workout.setsOfExcercise.count, expectedNumberOfSets, [NSString stringWithFormat:@"Expected workout to have %u sets but got %u sets", workout.setsOfExcercise.count, expectedNumberOfSets]);
}

- (void) testWorkoutsHaveExpectedNumberOfSets;
{
	NSDictionary *testData = [self createTestData];
	
	[self asssertWorkout: [testData objectForKey:@"workout0"] hasExpectedNumberOfSets: 3u];
	[self asssertWorkout: [testData objectForKey:@"workout1"] hasExpectedNumberOfSets: 2u];
	[self asssertWorkout: [testData objectForKey:@"workout2"] hasExpectedNumberOfSets: 3u];		
}

@end
