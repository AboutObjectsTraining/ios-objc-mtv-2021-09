// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolController () <UITextFieldDelegate>
@property (strong, nonatomic) UIView *contentView;
@property (strong, nonatomic) UITextField *textField;
@end

@implementation CLNCoolController

- (void)addCell {
    NSLog(@"In %s, text is %@", __func__, self.textField.text);
    CLNCoolViewCell *newCell = [[CLNCoolViewCell alloc] init];
    newCell.text = self.textField.text;
    newCell.backgroundColor = UIColor.blueColor;
    [self.contentView addSubview:newCell];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"In %s", __func__);
    [super touchesBegan:touches withEvent:event];
}

- (void)loadView {
    self.view = [[UIView alloc] init];
    self.view.backgroundColor = UIColor.brownColor;
    
    CGRect screenRect = UIScreen.mainScreen.bounds;
    CGRect accessoryRect;
    CGRect contentRect;
    CGRectDivide(screenRect, &accessoryRect, &contentRect, 86, CGRectMinYEdge);
    
    UIView *accessoryView = [[UIView alloc] initWithFrame:accessoryRect];
    self.contentView = [[UIView alloc] initWithFrame:contentRect];
    
    self.contentView.clipsToBounds = YES;
    
    [self.view addSubview:accessoryView];
    [self.view addSubview:self.contentView];
    
    accessoryView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.6];
    self.contentView.backgroundColor = [UIColor colorWithWhite:1 alpha:0.4];
    
    // Controls
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(30, 40, 240, 36)];
    [accessoryView addSubview:self.textField];
    self.textField.placeholder = @"Enter a label";
    self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.textField.delegate = self;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [accessoryView addSubview:button];
    [button setTitle:@"Add Cell" forState:UIControlStateNormal];
    [button sizeToFit];
    
    button.frame = CGRectOffset(button.frame, 280, 40);
    
    [button addTarget:self action:@selector(addCell) forControlEvents:UIControlEventTouchUpInside];
    
    // Cells
    
    CLNCoolViewCell *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 200, 40)];
    CLNCoolViewCell *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(50, 120, 200, 40)];
    
    [self.contentView addSubview:subview1];
    [self.contentView addSubview:subview2];
    
    subview1.text = @"Hello World! 🌎🌍🌏";
    subview2.text = @"Cool View Cells Rawk! 🍾🥂";
    
    subview1.backgroundColor = UIColor.purpleColor;
    subview2.backgroundColor = UIColor.orangeColor;
}

@end
