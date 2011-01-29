// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LCYSet.h instead.

#import <CoreData/CoreData.h>


@class LCYExercise;
@class LCYWorkout;




@interface LCYSetID : NSManagedObjectID {}
@end

@interface _LCYSet : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (LCYSetID*)objectID;



@property (nonatomic, retain) NSNumber *orderInWorkout;

@property int orderInWorkoutValue;
- (int)orderInWorkoutValue;
- (void)setOrderInWorkoutValue:(int)value_;

//- (BOOL)validateOrderInWorkout:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) NSNumber *repititions;

@property int repititionsValue;
- (int)repititionsValue;
- (void)setRepititionsValue:(int)value_;

//- (BOOL)validateRepititions:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) LCYExercise* exercise;
//- (BOOL)validateExercise:(id*)value_ error:(NSError**)error_;



@property (nonatomic, retain) LCYWorkout* workout;
//- (BOOL)validateWorkout:(id*)value_ error:(NSError**)error_;



@end

@interface _LCYSet (CoreDataGeneratedAccessors)

@end

@interface _LCYSet (CoreDataGeneratedPrimitiveAccessors)

- (NSNumber*)primitiveOrderInWorkout;
- (void)setPrimitiveOrderInWorkout:(NSNumber*)value;

- (int)primitiveOrderInWorkoutValue;
- (void)setPrimitiveOrderInWorkoutValue:(int)value_;


- (NSNumber*)primitiveRepititions;
- (void)setPrimitiveRepititions:(NSNumber*)value;

- (int)primitiveRepititionsValue;
- (void)setPrimitiveRepititionsValue:(int)value_;




- (LCYExercise*)primitiveExercise;
- (void)setPrimitiveExercise:(LCYExercise*)value;



- (LCYWorkout*)primitiveWorkout;
- (void)setPrimitiveWorkout:(LCYWorkout*)value;


@end
