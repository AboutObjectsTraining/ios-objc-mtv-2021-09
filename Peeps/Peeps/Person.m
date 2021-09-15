// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"
#import "Dog.h"

@implementation Person

// Convenience initializer
- (id)initWithFirstName:(NSString *)aFirstName
               lastName:(NSString *)aLastName {
    
    return [self initWithFirstName:aFirstName
                          lastName:aLastName
                               age:0];
}

// Designated initializer
- (id)initWithFirstName:(NSString *)aFirstName
               lastName:(NSString *)aLastName
                    age:(NSInteger)anAge {
    self = [super init];
    if (self == nil) return nil;
    
    _firstName = [aFirstName copy];
    _lastName = [aLastName copy];
    _age = anAge;
    
    return self;
}

// Factory method
+ (id)personWithFirstName:(NSString *)aFirstName
                 lastName:(NSString *)aLastName
                      age:(NSInteger)anAge {
    return [[self alloc] initWithFirstName:aFirstName lastName:aLastName age:anAge];
}

- (BOOL)respondsToSelector:(SEL)aSelector {
    if ([super respondsToSelector:aSelector]) {
        return YES;
    }
    return [self.dog respondsToSelector:aSelector];
}

- (id)forwardingTargetForSelector:(SEL)aSelector {
    if ([self.dog respondsToSelector:aSelector]) {
        return self.dog;
    }
    return nil;
}

- (NSString *)fullName {
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@, age is %@", self.fullName, @(self.age)];
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    Person *person = [[Person allocWithZone:zone] init];
    person->_firstName = [self.firstName copy];
    person->_lastName = [self.lastName copy];
    person->_age = self.age;
    return person;
}

@end
