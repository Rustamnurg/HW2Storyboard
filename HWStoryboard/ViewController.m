//
//  ViewController.m
//  HWStoryboard
//
//  Created by Ildar Zalyalov on 24.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *viewController;
@property (weak, nonatomic) IBOutlet UIButton *buttonAction;
@property (strong, nonatomic) NSArray *arrColor;
@property (strong, nonatomic) NSArray *arrText;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arrColor = @[[UIColor redColor], [UIColor grayColor], [UIColor greenColor], [UIColor yellowColor],[UIColor orangeColor], [UIColor purpleColor], [UIColor lightGrayColor], [UIColor blueColor], [UIColor blackColor], [UIColor brownColor]];
    _arrText = @[@"hi", @"bay", @"circle", @"live"];
}

- (IBAction)NextViewController:(id)sender {
    
}


- (void)viewWillAppear:(BOOL)animated {
    _buttonAction.backgroundColor = [_arrColor objectAtIndex:arc4random()%_arrColor.count];
    _viewController.backgroundColor = [_arrColor objectAtIndex:arc4random()%_arrColor.count];
}
@end
