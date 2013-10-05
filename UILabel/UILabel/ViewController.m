//
//  ViewController.m
//  UILabel
//
//  Created by navzou on 10/5/13.
//  Copyright (c) 2013 navzou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initLabel];
    [self debugLabelProperties];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initLabel
{
    label = [[UILabel alloc] initWithFrame:CGRectZero];
    label.frame = CGRectMake(0, 0, 320, 198);
    label.center = CGPointMake(60, 99);
    label.backgroundColor = [[UIColor alloc] initWithRed:1.0
                                                   green:0.0
                                                    blue:0.5
                                                   alpha:1.0];
    label.text = @"UILabelSample";
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.hidden = NO;
    [self.view addSubview:label];
}

- (void)debugLabelProperties
{
    NSLog(@"x :%f", label.frame.origin.x);
    NSLog(@"y :%f", label.frame.origin.y);
    NSLog(@"width:%f", label.frame.size.width);
    NSLog(@"height:%f", label.frame.size.height);
    
    NSLog(@"centerX: %f", label.center.x);
    NSLog(@"centerY: %f", label.center.y);
}

@end
