//
//  ViewController3.m
//  HWStoryboard
//
//  Created by Rustam N on 26.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "ViewController3.h"

@interface ViewController3 ()
@property (strong, nonatomic) IBOutlet UIView *viewController;

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"cancel" style:UIBarButtonItemStylePlain target:self action:@selector(cancelButton:)];
    self.navigationItem.leftBarButtonItem = btn;
   
}
- (IBAction)cancelButton:(id)sender{
    [[self presentingViewController] dismissViewControllerAnimated:NO completion:nil];
    

    
   }
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
