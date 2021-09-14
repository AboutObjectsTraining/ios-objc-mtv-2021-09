// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>
#import "Dog.h"

@interface Person : NSObject <NSCopying> {
    // Ivars
    NSString *_firstName;
    NSString *_lastName;
    NSInteger _age;
    
    Dog *_dog;
}

// Methods

- (id)initWithFirstName:(NSString *)aFirstName
               lastName:(NSString *)aLastName;

- (id)initWithFirstName:(NSString *)aFirstName
               lastName:(NSString *)aLastName
                    age:(NSInteger)anAge;

+ (id)personWithFirstName:(NSString *)aFirstName
                 lastName:(NSString *)aLastName
                      age:(NSInteger)anAge;

- (NSString *)firstName;
- (void)setFirstName:(NSString *)newValue;

- (NSString *)lastName;
- (void)setLastName:(NSString *)newValue;

- (NSString *)fullName;

- (NSInteger)age;
- (void)setAge:(NSInteger)newValue;

- (Dog *)dog;
- (void)setDog:(Dog *)newValue;

@end
