//
//  WorkoutTestCase.m
//  CoreDataUnitTestExample
//
//  Created by Krishna Kotecha on 29/01/2011.
//  Copyright 2011 Krishna Kotecha. All rights reserved.
//

#import "WorkoutTestCase.h"

@interface WorkoutTestCase()
@end


@implementation WorkoutTestCase

#pragma mark -
#pragma mark Set Up and Tear Down stuff

- (void) setUp;
{
	[super setUp];
}

- (void) tearDown;
{
	[super tearDown];
}

- (NSDictionary *) createTestData;
{	
	NSDictionary *testData = [NSDictionary dictionaryWithObjectsAndKeys:
							  nil];
	
	return testData;
	
}

- (void) testMath 
{    
    STAssertTrue((1+1)==2, @"Compiler isn't feeling well today :-(" );    
}

@end
