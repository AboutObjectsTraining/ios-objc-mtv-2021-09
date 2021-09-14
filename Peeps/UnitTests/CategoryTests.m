// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <Peeps/Peeps.h>

//@interface NSString (PEEPAdditions)
//- (void)bark;
//@end

@interface CategoryTests : XCTestCase

@end

@implementation CategoryTests

- (void)testBarkingStrings {
    NSString *hello = @"Hello World!";
    [hello peep_bark];
}


@end
