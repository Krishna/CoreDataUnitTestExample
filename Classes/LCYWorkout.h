#import "_LCYWorkout.h"

@interface LCYWorkout : _LCYWorkout 
{
}

+ (LCYWorkout *) insertWithDate: (NSDate *) date inManagedObjectContext: (NSManagedObjectContext *) moc;

@end
