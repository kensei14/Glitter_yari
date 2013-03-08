//
//  ChoiceViewController.m
//  Glitter
//
//  Created by 鎗水謙星 on 2013/03/08.
//  Copyright (c) 2013年 鎗水謙星. All rights reserved.
//

#import "GlitterAppDelegate.h"
#import "ChoiceViewController.h"
#import "WashViewController.h"

@interface ChoiceViewController ()

@end

@implementation ChoiceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"2つ目の画面です！");
        NSLog(self.nibName);
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)item1act:(id)sender {
    NSLog(@"item01 is chosen");
    
    GlitterAppDelegate *appDelegate;
    appDelegate = (GlitterAppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.imageName = @"ptn.jpg";
    
    WashViewController *WashVC = [[WashViewController alloc] initWithNibName:@"WashViewController" bundle:nil];
    [self presentViewController:WashVC animated:YES completion:nil];
}

- (IBAction)item2act:(id)sender {
    NSLog(@"item02 is chosen");
 
    GlitterAppDelegate *appDelegate;
    appDelegate = (GlitterAppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.imageName = @"ptn2.jpg";
    
    WashViewController *WashVC = [[WashViewController alloc] initWithNibName:@"WashViewController" bundle:nil];
    [self presentViewController:WashVC animated:YES completion:nil];
}

- (IBAction)item3act:(id)sender {
    NSLog(@"item03 is chosen");
    
    GlitterAppDelegate *appDelegate;
    appDelegate = (GlitterAppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.imageName = @"ptn3.jpeg";
    
    WashViewController *WashVC = [[WashViewController alloc] initWithNibName:@"WashViewController" bundle:nil];
    [self presentViewController:WashVC animated:YES completion:nil];
}

- (IBAction)item4act:(id)sender {
    NSLog(@"item04 is chosen");
    
    GlitterAppDelegate *appDelegate;
    appDelegate = (GlitterAppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.imageName = @"ptn4.jpg";
    
    WashViewController *WashVC = [[WashViewController alloc] initWithNibName:@"WashViewController" bundle:nil];
    [self presentViewController:WashVC animated:YES completion:nil];
}

- (IBAction)item5act:(id)sender {
    NSLog(@"item05 is chosen");
    
    GlitterAppDelegate *appDelegate;
    appDelegate = (GlitterAppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.imageName = @"ptn6.jpg";
    
    WashViewController *WashVC = [[WashViewController alloc] initWithNibName:@"WashViewController" bundle:nil];
    [self presentViewController:WashVC animated:YES completion:nil];
}

- (IBAction)item6act:(id)sender {
    NSLog(@"item06 is chosen");
    
    GlitterAppDelegate *appDelegate;
    appDelegate = (GlitterAppDelegate*)[[UIApplication sharedApplication] delegate];
    appDelegate.imageName = @"ptn7.jpg";
    
    WashViewController *WashVC = [[WashViewController alloc] initWithNibName:@"WashViewController" bundle:nil];
    [self presentViewController:WashVC animated:YES completion:nil];
}

@end
