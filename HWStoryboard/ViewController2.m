//
//  ViewController2.m
//  HWStoryboard
//
//  Created by Rustam N on 26.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()
@property (strong, nonatomic) IBOutlet UIView *viewController;
@property (weak, nonatomic) IBOutlet UIButton *buttonPressed;
@property (strong, nonatomic) NSArray *arrColor;
@property (strong, nonatomic) NSArray *arrText;
@end
@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    _arrColor = @[[UIColor redColor], [UIColor grayColor], [UIColor greenColor], [UIColor yellowColor],[UIColor orangeColor], [UIColor purpleColor], [UIColor lightGrayColor], [UIColor blueColor], [UIColor blackColor], [UIColor brownColor]];
    _arrText = @[@"hi", @"bay", @"circle", @"live"];
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"to Root" style:UIBarButtonItemStylePlain target:self action:@selector(toRootButton:)];
    self.navigationItem.leftBarButtonItem = btn;
   
    [self.navigationItem setTitle:[_arrText objectAtIndex:arc4random()%_arrText.count]];
    _buttonPressed.backgroundColor = [_arrColor objectAtIndex:arc4random()%_arrColor.count];
    _viewController.backgroundColor = [_arrColor objectAtIndex:arc4random()%_arrColor.count];
    _buttonPressed.titleLabel.text = [_arrText objectAtIndex:arc4random()%_arrText.count];

}

-(IBAction)toRootButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)viewDidAppear:(BOOL)animated{
//    _buttonPressed.backgroundColor = [_arrColor objectAtIndex:arc4random()%_arrColor.count];
//    _viewController.backgroundColor = [_arrColor objectAtIndex:arc4random()%_arrColor.count];
//    _buttonPressed.titleLabel.text = [_arrText objectAtIndex:arc4random()%_arrText.count];

}

- (void) viewWillDisappear:(BOOL)animated{
    _buttonPressed.backgroundColor = [_arrColor objectAtIndex:arc4random()%_arrColor.count];
    _viewController.backgroundColor = [_arrColor objectAtIndex:arc4random()%_arrColor.count];
    _buttonPressed.titleLabel.text = [_arrText objectAtIndex:arc4random()%_arrText.count];
   
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
