#import "LCYWorkout.h"

@implementation LCYWorkout

+ (LCYWorkout *) insertWithDate: (NSDate *) date inManagedObjectContext: (NSManagedObjectContext *) moc;
{
	LCYWorkout *result = [self insertInManagedObjectContext:moc];
	result.date = date;
	return result;
}

@end
