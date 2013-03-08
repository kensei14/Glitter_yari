//
//  GlitterViewController.m
//  Glitter
//
//  Created by 鎗水謙星 on 2013/03/08.
//  Copyright (c) 2013年 鎗水謙星. All rights reserved.
//

#import "GlitterAppDelegate.h"
#import "GlitterViewController.h"
#import "ChoiceViewController.h"

@interface GlitterViewController ()

@end

@implementation GlitterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ChoiceActn:(id)sender {
    
    ChoiceViewController *choiceVC = [[ChoiceViewController alloc] initWithNibName:@"ChoiceViewController" bundle:nil];
    [self presentViewController:choiceVC animated:YES completion:nil];
}

@end
