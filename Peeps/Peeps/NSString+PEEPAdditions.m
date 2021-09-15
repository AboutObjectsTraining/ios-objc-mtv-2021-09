// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "NSString+PEEPAdditions.h"

@implementation NSString (PEEPAdditions)

- (void)peep_bark {
    printf("%s: Woof! Woof!\n", self.UTF8String);
}

@end
