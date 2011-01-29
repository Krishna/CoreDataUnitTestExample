// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to LCYExercise.h instead.

#import <CoreData/CoreData.h>


@class LCYSet;



@interface LCYExerciseID : NSManagedObjectID {}
@end

@interface _LCYExercise : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (LCYExerciseID*)objectID;



@property (nonatomic, retain) NSString *name;

//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;




@property (nonatomic, retain) NSSet* performedInSets;
- (NSMutableSet*)performedInSetsSet;



@end

@interface _LCYExercise (CoreDataGeneratedAccessors)

- (void)addPerformedInSets:(NSSet*)value_;
- (void)removePerformedInSets:(NSSet*)value_;
- (void)addPerformedInSetsObject:(LCYSet*)value_;
- (void)removePerformedInSetsObject:(LCYSet*)value_;

@end

@interface _LCYExercise (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSMutableSet*)primitivePerformedInSets;
- (void)setPrimitivePerformedInSets:(NSMutableSet*)value;


@end
