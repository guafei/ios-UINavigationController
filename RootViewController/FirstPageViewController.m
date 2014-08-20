//
//  FirstPageViewController.m
//  RootViewController
//
//  Created by guafei on 14-8-19.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "FirstPageViewController.h"
#import "SecondPageViewController.h"

@interface FirstPageViewController ()

@end

@implementation FirstPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"FirstPageViewController viewWillAppear called");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor darkGrayColor];
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 40)];
    firstLabel.textAlignment = NSTextAlignmentCenter;
    firstLabel.text = @"first page";
    firstLabel.textColor = [UIColor blueColor];
    
    UIButton *firstBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 320, self.view.bounds.size.width, 40)];
    [firstBtn addTarget:self action:@selector(firstBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    firstBtn.backgroundColor = [UIColor grayColor];
    [firstBtn setTitle:@"first Btn" forState:UIControlStateNormal];
    
    [self.view addSubview:firstLabel];
    [self.view addSubview:firstBtn];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)firstBtnClicked:(id)sender
{
    SecondPageViewController *secondVC = [[SecondPageViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:NO];
    secondVC.firstVC = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
