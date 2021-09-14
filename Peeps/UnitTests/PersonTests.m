// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>
#import <Peeps/Peeps.h>

@interface PersonTests : XCTestCase

@end

@implementation PersonTests

- (void)testCreatePerson {
    Person *person = [[Person alloc] init];
    // Wrong!
    //    [person init];
    
    [person setFirstName:@"Fred"];
    [person setLastName:@"Smith"];
    [person setAge:42];

    NSLog(@"Person is %@", person);
}

- (void)testConvenienceInitializer {
    Person *person = [[Person alloc] initWithFirstName:@"Fred"
                                              lastName:@"Smith"];
    
    NSLog(@"Person is %@", person);
}

- (void)testDesignatedInitializer {
    Person *person = [[Person alloc] initWithFirstName:@"Fred"
                                              lastName:@"Smith"
                                                   age:42];
    NSLog(@"Person is %@", person);
}

- (void)testFactoryMethod {
    Person *person = [Person personWithFirstName:@"Fred"
                                        lastName:@"Smith"
                                             age:42];
    NSLog(@"Person is %@", person);
}

@end
