//
//  LCYCoreDataTestCase.m
//
//  Created by Krishna Kotecha
//  Copyright 2011 Krishna Kotecha. All rights reserved.
//
//

#import "LCYCoreDataTestCase.h"

@interface LCYCoreDataTestCase(Utils)
- (void) setUpDirectoryForSqliteFile;
- (void) deleteUnderlyingSqliteFile;
- (NSString *) databasePath;
- (NSURL *) databaseURL;
@end


@implementation LCYCoreDataTestCase

- (void) setUp;
{
	managedObjectModel_ = [[NSManagedObjectModel mergedModelFromBundles: [NSArray arrayWithObject:[NSBundle bundleForClass: [self class]]]] retain];	
	// NSLog(@"model: %@", managedObjectModel_);

  persistentStoreCoordinator_ = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel: managedObjectModel_];

	[self setUpDirectoryForSqliteFile];
	
	NSError *error = nil;
  store_ = [persistentStoreCoordinator_ addPersistentStoreWithType: NSSQLiteStoreType
                                                     configuration: nil
                                                               URL: [self databaseURL]
                                                           options: nil
                                                             error: &error];
	if (!store_)
	{
   	NSLog(@"Unresolved error trying to add persistent store: %@, %@", error, [error userInfo]);
 		abort();			
	}

  managedObjectContext_ = [[NSManagedObjectContext alloc] init];
  [managedObjectContext_ setPersistentStoreCoordinator: persistentStoreCoordinator_];
}

- (void) tearDown;
{
  [managedObjectContext_ release];
  managedObjectContext_ = nil;

  NSError *error = nil;
  STAssertTrue([persistentStoreCoordinator_ removePersistentStore: store_ error: &error], 
               @"couldn't remove persistent store: %@", error);
  store_ = nil;

  [persistentStoreCoordinator_ release];
  persistentStoreCoordinator_ = nil;

  [managedObjectModel_ release];
  managedObjectModel_ = nil;

	[self deleteUnderlyingSqliteFile];

}

#pragma mark -
#pragma mark LCYCoreDataTest(Utils)

- (void) setUpDirectoryForSqliteFile;
{
	NSFileManager *fm = [NSFileManager defaultManager];
	BOOL isDir = NO;
	if (! [fm fileExistsAtPath:[self applicationDocumentsDirectory] isDirectory:&isDir] )
	{
		NSError *error = nil;
		if ( ![fm createDirectoryAtPath: [self applicationDocumentsDirectory]
			withIntermediateDirectories: YES
							 attributes: nil
								  error: &error])
		{
			NSLog(@"%s Error creating unit test database directory: %@ error: %@", 
				  _cmd, 
				  [self applicationDocumentsDirectory], 
				  [error description]);
			
			abort();					
		}
	}	
}

- (void) deleteUnderlyingSqliteFile;
{
	NSFileManager *fm = [NSFileManager defaultManager];

	if ([fm fileExistsAtPath:[self databasePath]])
	{
		NSLog(@"%s Nuking test database file", _cmd);

		NSError *error = nil;
		BOOL result = [fm removeItemAtURL:[self databaseURL] error:&error];
		if (!result)
		{
				NSLog(@"%s Error removing testDatabase: %@", _cmd, [error description]);
				abort();			
		}
	}
	else
	{
		NSLog(@"%s No database file needed to be cleaned up. Hmm", _cmd);
	}	
}

- (NSString *) applicationDocumentsDirectory;
{
		NSString *result = @"/var/tmp/unitTest";
		//NSLog(@"%s app Dir:%@", _cmd, result);
		return result;
}

- (NSString *) databasePath;
{
	return [[self applicationDocumentsDirectory] stringByAppendingPathComponent: @"unitTestDB.sqlite"];
}

- (NSURL *) databaseURL;
{
	return [NSURL fileURLWithPath: [self databasePath]];	
}


@end
