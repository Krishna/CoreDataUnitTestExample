#import "LCYExercise.h"
#import "LCYSet.h"

@implementation LCYSet

+ (LCYSet *) insertWithExercise: (LCYExercise *) exercise orderInWorkout: (int) order repititions: (int) reps inManagedObjectContext: (NSManagedObjectContext *) moc;
{
	LCYSet *result = [LCYSet insertInManagedObjectContext:moc];
	result.exercise = exercise;
	result.orderInWorkoutValue = order;
	result.repititionsValue = reps;
	return result;
}

@end
