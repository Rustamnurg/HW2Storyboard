//
//  Books.m
//  HWStoryboard
//
//  Created by Rustam N on 26.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "Books.h"

@interface Books ()

@end

@implementation Books

- (void)viewDidLoad {
    [super viewDidLoad];
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"cancel" style:UIBarButtonItemStylePlain target:self action:@selector(cancelButton:)];
    self.navigationItem.leftBarButtonItem = btn;
   
}
- (IBAction)cancelButton:(id)sender{
[self dismissViewControllerAnimated:YES completion:nil];

}
@end
