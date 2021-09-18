// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "UIImage+RELAdditions.h"

@implementation UIImage (RELAdditions)

+ (UIImage *)rel_imageNamed:(NSString *)imageName {
    UIImage *image = [self imageNamed:imageName];
    return image != nil ? image : [self imageNamed:@"DefaultImage"];
}

@end
