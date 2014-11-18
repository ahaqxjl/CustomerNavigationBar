//
//  ViewController.m
//  CustomNavBar
//
//  Created by Jordan on 11/18/14.
//  Copyright (c) 2014 Jordan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    buttonMargin = 8.0;
    
    CGRect frame = self.navigationController.navigationBar.bounds;
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor blackColor];
    
    
    CGRect buttonFrame = frame;
    buttonFrame.origin.x = buttonMargin;
    buttonFrame.origin.y = buttonMargin;
    buttonFrame.size.height = frame.size.height - buttonMargin * 2;
    buttonFrame.size.width = buttonFrame.size.height;
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    leftButton.frame = buttonFrame;
    [leftButton setImage:[UIImage imageNamed:@"MenuIcon"] forState:UIControlStateNormal];
    [view addSubview:leftButton];
    
    UITextField *titleTextField = [[UITextField alloc] initWithFrame:frame];
    titleTextField.placeholder = @"Input text here";
    
    [self.navigationController.navigationBar addSubview:view];
    
    //不能使用self.navigationItem.titleView = view, 会在左右两边产生边距
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
