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

- (void)testMessagesToNil {
    id foo = nil;
    
    NSString *desc = [foo description];
    
    NSLog(@"%@", desc);
}

- (void)testBarkBehavior {
    id fred = [[Person alloc] initWithFirstName:@"Fred"
                                              lastName:@"Smith"
                                                   age:42];
    Dog *rover = [[Dog alloc] init];
    
    [fred setDog:rover];
    
    if ([fred respondsToSelector:@selector(peep_bark)]) {
        [fred bark];
    }
    
    if ([fred respondsToSelector:@selector(lastObject)]) {
        [fred lastObject];
    }
}

- (void)testCopyingBehavior {
    Person *fred = [[Person alloc] initWithFirstName:@"Fred"
                                            lastName:@"Smith"
                                                 age:42];
    
    Person *fredsClone = [fred copy];
    
    NSLog(@"%@", fredsClone);
}

// Key-Value Coding
- (void)testKVC {
    Person *fred = [[Person alloc] initWithFirstName:@"Fred"
                                            lastName:@"Smith"
                                                 age:42];
    
    
    
    NSLog(@"%@", [fred valueForKey:@"lastName"]);
    
    [fred setValue:@"Smythe" forKey:@"lastName"];
    NSLog(@"%@", [fred lastName]);
}

@end
