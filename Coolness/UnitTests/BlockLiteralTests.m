// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <XCTest/XCTest.h>

void SayHello(void) {
    printf("Hello!\n");
}

void DoNTimes(int count, void (*thingToDo)(void)) {
    for (int i = 0; i < count; i++) {
        thingToDo();
    }
}

void DoNTimesWithBlock(int count, void (^thingToDo)(void)) {
    for (int i = 0; i < count; i++) {
        thingToDo();
    }
}

@interface BlockLiteralTests : XCTestCase
@end

@implementation BlockLiteralTests

- (void)testPassingBlockLiteral {
    DoNTimesWithBlock(3, ^{
        printf("Hello from my block!\n");
    });
}

- (void)testBlockLiterals {
    void (^myBlock)(void);
    
    char *message = "World!";
    
    myBlock = ^{
        printf("Hello %s!\n", message);
    };
    
    NSLog(@"%@", myBlock);
    
    myBlock();
}

- (void)testPassingFunctionAddress {
    DoNTimes(3, SayHello);
}

- (void)testFunctionPointers {
    void (*myPtr)(void);
    
    myPtr = SayHello;
    
    myPtr();
}

@end
