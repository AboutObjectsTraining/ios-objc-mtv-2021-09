// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

@interface ClassClusterTests : XCTestCase

@end

@implementation ClassClusterTests

- (void)testStringClassCluster {
    
    NSMutableString *s1 = [NSString alloc];
    NSString *s2 = [NSString alloc];
    
    NSString *s3 = [NSString stringWithString:@"Foo"];
    
    s1 = [s1 initWithFormat:@"Hello %@", @"World!"];
//    [s1 appendString:@" Woo!"];
    
    NSLog(@"%@", s1);
    
    NSArray *a1 = [[NSArray alloc] initWithObjects:@1, nil];
    NSMutableArray *a2 = [a1 mutableCopy];
    NSLog(@"%@, %@", a1, a2);
}

@end
