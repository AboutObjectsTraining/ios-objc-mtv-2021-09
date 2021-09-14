// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import <Foundation/Foundation.h>

//struct CPerson {
//    char *firstName;
//    char *lastName;
//    int age;
//}

@interface Person : NSObject {
    // Ivars
    NSString *_firstName;
    NSString *_lastName;
    NSInteger _age;
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

@end
