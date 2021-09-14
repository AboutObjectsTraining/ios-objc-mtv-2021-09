// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "Person.h"

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
    
    _firstName = aFirstName;
    _lastName = aLastName;
    _age = anAge;
    
    return self;
}

// Factory method
+ (id)personWithFirstName:(NSString *)aFirstName
                 lastName:(NSString *)aLastName
                      age:(NSInteger)anAge {
    return [[self alloc] initWithFirstName:aFirstName lastName:aLastName age:anAge];
}

- (NSString *)firstName {
    return _firstName;
}
- (void)setFirstName:(NSString *)newValue {
    _firstName = newValue; // TODO: handle mutable value
}

- (NSString *)lastName {
    return _lastName;
}
- (void)setLastName:(NSString *)newValue {
    _lastName = newValue;
}

- (NSInteger)age {
    return _age;
}
- (void)setAge:(NSInteger)newValue {
    _age = newValue;
}

- (NSString *)fullName {
    NSString *fName = [self firstName];
    NSString *lName = [self lastName];
    
    return [NSString stringWithFormat:@"%@ %@", fName, lName];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@, age is %@", [self fullName], @([self age])];
}

@end
