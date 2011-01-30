#import "LCYExercise.h"

@implementation LCYExercise

+ (LCYExercise *) insertWithName: (NSString *) name inManagedObjectContext: (NSManagedObjectContext *) moc;
{
	LCYExercise *result = [self insertInManagedObjectContext:moc];
	result.name = name;
	return result;
}

@end
