// Copyright (C) 2021 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "CLNCoolController.h"
#import "CLNCoolViewCell.h"

@interface CLNCoolController () <UITextFieldDelegate>
//@property (strong, nonatomic) IBOutlet UIView *contentView;
//@property (strong, nonatomic) IBOutlet UITextField *textField;
@end

@implementation CLNCoolController

//- (void)viewDidLoad {
//    CLNCoolViewCell *subview1 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(20, 60, 200, 40)];
//    CLNCoolViewCell *subview2 = [[CLNCoolViewCell alloc] initWithFrame:CGRectMake(50, 120, 200, 40)];
//    
//    [self.contentView addSubview:subview1];
//    [self.contentView addSubview:subview2];
//    
//    subview1.text = @"Hello World! 🌎🌍🌏";
//    subview2.text = @"Cool View Cells Rawk! 🍾🥂";
//    
//    subview1.backgroundColor = UIColor.systemPurpleColor;
//    subview2.backgroundColor = UIColor.systemOrangeColor;
//}

//- (IBAction)addCell {
//    NSLog(@"In %s, text is %@", __func__, self.textField.text);
//    CLNCoolViewCell *newCell = [[CLNCoolViewCell alloc] init];
//    newCell.text = self.textField.text;
//    newCell.backgroundColor = UIColor.systemBlueColor;
//    [self.contentView addSubview:newCell];
//}

//- (BOOL)textFieldShouldReturn:(UITextField *)textField {
//    [textField resignFirstResponder];
//    return YES;
//}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"In %s", __func__);
    [super touchesBegan:touches withEvent:event];
}

- (void)loadView2 {
    [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:self options:nil];
}

- (void)loadView1 {
    NSArray *topLevelObjs = [NSBundle.mainBundle loadNibNamed:@"CoolStuff" owner:nil options:nil];
    self.view = topLevelObjs.firstObject;
}

@end
