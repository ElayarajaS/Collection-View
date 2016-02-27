//
//  ViewController.m
//  SampleContainerView
//
//  Created by Apple3 on 14/10/15.
//  Copyright (c) 2015 Apple3. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
//    [[NSNotificationCenter defaultCenter]
//     addObserver:self
//     selector:@selector(didFinishAnnouncement:)
//     name:UIAccessibilityAnnouncementDidFinishNotification
//     object:nil];
}

- (void)didFinishAnnouncement:(NSNotification *)dict
{
//    NSString *valueSpoken = [[dict userInfo] objectForKey:UIAccessibilityAnnouncementKeyStringValue];
//    NSString *wasSuccessful = [[dict userInfo] objectForKey:UIAccessibilityAnnouncementKeyWasSuccessful];
    // ...
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)viewOneButtonAction {
    
    UIViewController *sub = [self.storyboard instantiateViewControllerWithIdentifier:@"OneViewControllerID"];
    [self addChildViewController:sub];
    sub.view.frame = self.view.bounds;
    //[self moveToNewController:sub];
    
}
-(IBAction)viewTwoButtonAction {
    
    UIViewController *sub = [self.storyboard instantiateViewControllerWithIdentifier:@"TwoViewControllerID"];
    [self addChildViewController:sub];
    sub.view.frame = self.view.bounds;
   // [self moveToNewController:sub];
}

//-(void)moveToNewController:(UIViewController *) newController {
//    [self.currentController willMoveToParentViewController:nil];
//    [self transitionFromViewController:self.currentController toViewController:newController duration:.6 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{}
//                            completion:^(BOOL finished) {
//                                [self.currentController removeFromParentViewController];
//                                [newController didMoveToParentViewController:self];
//                                self.currentController = newController;
//                                [self constrainViewEqual:self.currentController];
//                            }];
//}
@end
