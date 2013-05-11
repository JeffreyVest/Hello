//
//  ViewController.m
//  Hello
//
//  Created by Jeffrey Vest on 5/2/13.
//  Copyright (c) 2013 Jeffrey Vest. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

bool didIt;

- (IBAction)pushme:(id)sender {
    
    CGRect startRect = self.hellolabel.frame;
    [UIView
     animateWithDuration:0.1
     delay:0.0
     options:UIViewAnimationOptionCurveLinear
     animations:^{
         self.hellolabel.frame = CGRectMake(self.view.frame.size.width, self.hellolabel.frame.origin.y, self.hellolabel.frame.size.width, self.hellolabel.frame.size.height);
         self.hellolabel.alpha = 0.0;
     }
     completion:^(BOOL finished){
         if (didIt)
             self.hellolabel.text = @"Hello";
         else
             self.hellolabel.text = @"Wazup";
         didIt = !didIt;
         
         self.hellolabel.frame = CGRectMake(-self.hellolabel.frame.size.width, self.hellolabel.frame.origin.y, self.hellolabel.frame.size.width, self.hellolabel.frame.size.height);
         
         [UIView
          animateWithDuration:0.1
          delay:0.0
          options:UIViewAnimationOptionCurveLinear
          animations:^{
              self.hellolabel.frame = startRect;
              self.hellolabel.alpha = 1.0;
          }
          completion:^(BOOL finished){
          }
          ];
     }];
    
}
@end
