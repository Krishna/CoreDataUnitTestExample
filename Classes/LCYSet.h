#import "_LCYSet.h"

@class LCYExercise;

@interface LCYSet : _LCYSet 
{

}

+ (LCYSet *) insertWithExercise: (LCYExercise *) exercise orderInWorkout: (int) order repititions: (int) reps inManagedObjectContext: (NSManagedObjectContext *) moc;

@end
