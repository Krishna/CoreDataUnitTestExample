// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LCYWorkout.h instead.

#import <CoreData/CoreData.h>


@class LCYSet;



@interface LCYWorkoutID : NSManagedObjectID {}
@end

@interface _LCYWorkout : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (LCYWorkoutID*)objectID;



@property (nonatomic, retain) NSDate *date;

//- (BOOL)validateDate:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* setsOfExcercise;
- (NSMutableSet*)setsOfExcerciseSet;



@end

@interface _LCYWorkout (CoreDataGeneratedAccessors)

- (void)addSetsOfExcercise:(NSSet*)value_;
- (void)removeSetsOfExcercise:(NSSet*)value_;
- (void)addSetsOfExcerciseObject:(LCYSet*)value_;
- (void)removeSetsOfExcerciseObject:(LCYSet*)value_;

@end

@interface _LCYWorkout (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveDate;
- (void)setPrimitiveDate:(NSDate*)value;




- (NSMutableSet*)primitiveSetsOfExcercise;
- (void)setPrimitiveSetsOfExcercise:(NSMutableSet*)value;


@end
