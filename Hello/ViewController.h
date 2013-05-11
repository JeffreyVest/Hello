//
//  ViewController.h
//  Hello
//
//  Created by Jeffrey Vest on 5/2/13.
//  Copyright (c) 2013 Jeffrey Vest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)pushme:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *hellolabel;
@property (weak, nonatomic) IBOutlet UIButton *pushmebutton;

@end
