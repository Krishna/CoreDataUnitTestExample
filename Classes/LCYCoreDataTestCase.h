//
//  LCYCoreDataTestCase.h

//  Created by Krishna Kotecha
//  Copyright 2011 Krishna Kotecha. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import <CoreData/CoreData.h>


@interface LCYCoreDataTestCase : SenTestCase 
{
    NSManagedObjectContext			*managedObjectContext_;
    NSManagedObjectModel			*managedObjectModel_;
    NSPersistentStoreCoordinator	*persistentStoreCoordinator_;
    NSPersistentStore				*store_;
}

- (NSString *) applicationDocumentsDirectory;

@end
