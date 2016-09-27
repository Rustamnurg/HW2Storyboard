//
//  EndlessSegue.m
//  HWStoryboard
//
//  Created by Ildar Zalyalov on 24.09.16.
//  Copyright © 2016 com.ildar.itis. All rights reserved.
//

#import "EndlessSegue.h"

@interface EndlessSegue ()
@property (weak, nonatomic) IBOutlet UIButton *actionButton;
@property (strong, nonatomic) NSArray *colorArr;
@property (strong, nonatomic) NSArray *textArr;

@end

@implementation EndlessSegue

- (void)viewDidLoad {
    [super viewDidLoad];
    _colorArr = @[[UIColor redColor], [UIColor grayColor], [UIColor greenColor], [UIColor yellowColor],[UIColor orangeColor], [UIColor purpleColor], [UIColor lightGrayColor], [UIColor blueColor], [UIColor blackColor], [UIColor brownColor]];
    _textArr = @[@"hi", @"bay", @"circle", @"live"];
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"to Root" style:UIBarButtonItemStylePlain target:self action:@selector(toRootButton:)];
    self.navigationItem.leftBarButtonItem = btn;
    
    [self.navigationItem setTitle:[_textArr objectAtIndex:arc4random()%_textArr.count]];
    _actionButton.backgroundColor = [_colorArr objectAtIndex:arc4random()%_colorArr.count];
    self.view.backgroundColor = [_colorArr objectAtIndex:arc4random()%_colorArr.count];
    [_actionButton setTitle: [_textArr objectAtIndex:arc4random()%_textArr.count] forState:UIControlStateNormal];
    
    if (self == [self.navigationController.viewControllers objectAtIndex:0]){
        UILabel *myLabel = [UILabel new];
        myLabel.text = @"Firs view controller";
        [myLabel sizeToFit];
        [myLabel setCenter:self.view.center];
        [self.view addSubview:myLabel];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    _actionButton.backgroundColor = [_colorArr objectAtIndex:arc4random()%_colorArr.count];
    self.view.backgroundColor = [_colorArr objectAtIndex:arc4random()%_colorArr.count];
}

- (void) viewWillDisappear:(BOOL)animated{
    _actionButton.backgroundColor = [_colorArr objectAtIndex:arc4random()%_colorArr.count];
    self.view.backgroundColor = [_colorArr objectAtIndex:arc4random()%_colorArr.count];
    _actionButton.titleLabel.text = [_textArr objectAtIndex:arc4random()%_textArr.count];
    
}

-(IBAction)toRootButton:(id)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
}

@end
