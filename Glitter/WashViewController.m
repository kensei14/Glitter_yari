//
//  WashViewController.m
//  Glitter
//
//  Created by 鎗水謙星 on 2013/03/08.
//  Copyright (c) 2013年 鎗水謙星. All rights reserved.
//

#import "GlitterAppDelegate.h"
#import "WashViewController.h"

@interface WashViewController ()

@end

@implementation WashViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.washImage.userInteractionEnabled = YES;
    self.washImage.tag = 100;
    self.circle.userInteractionEnabled = YES;
    self.circle.tag = 110;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"実行されている");
    [super viewWillAppear:animated];
    GlitterAppDelegate *appDelegate;
    appDelegate = (GlitterAppDelegate*)[[UIApplication sharedApplication] delegate];
    NSLog(appDelegate.imageName);
    
    [self.TargetItem setImage:[UIImage imageNamed:appDelegate.imageName] forState:UIControlStateNormal];
}

-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event{
	CGPoint pos=[[touches anyObject] locationInView:self.view];
	//NSLog(@"[BEGAN]（x = %f , y = %f)",pos.x,pos.y);
    
    UITouch *touch = [[event allTouches] anyObject];
    if (touch.view.tag == self.washImage.tag ) {
        NSLog(@"washImage was touched");
    } else if (touch.view.tag == self.circle.tag ) {
        NSLog(@"circle was touched");
    }
    NSLog([NSString stringWithFormat : @"%d", touch.view.tag]);
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	//現在のタッチポイント
	CGPoint pos =[ [touches anyObject] locationInView:self.view];
	//NSLog(@"[MOVE]（x = %f , y = %f)",pos.x,pos.y);
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
	//NSLog(@"[END]");
}

@end
