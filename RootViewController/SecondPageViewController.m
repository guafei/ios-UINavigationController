//
//  SecondPageViewController.m
//  RootViewController
//
//  Created by guafei on 14-8-19.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "SecondPageViewController.h"
#import "ThirdPageViewController.h"

@interface SecondPageViewController ()

@end

@implementation SecondPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//- (void)viewWillAppear:(BOOL)animated
//{
//    [super viewWillAppear:animated];
//    
//    NSLog(@"SecondPageViewController viewWillAppear called");
//    if(_isPop)
//    {
//        NSLog(@"self.navigationController is %@",self.navigationController);
////        [self dismissModalViewControllerAnimated:NO];
//        [self.navigationController popViewControllerAnimated:NO];
////        [self.navigationController popToViewController:_firstVC animated:YES];
////        [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:NO];
//    }
//}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    if(_isPop)
    {
        //        [self dismissModalViewControllerAnimated:NO];
//        [self.navigationController popViewControllerAnimated:YES];
        //        [self.navigationController popToViewController:_firstVC animated:YES];
                [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0] animated:NO];
    }

}

- (void)viewDidLoad
{
    [super viewDidLoad];

    _isPop = NO;
    self.view.backgroundColor = [UIColor greenColor];
    UILabel *secondLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 40)];
    secondLabel.textAlignment = NSTextAlignmentCenter;
    secondLabel.text = @"second page";
    secondLabel.textColor = [UIColor blueColor];
    
    UIButton *secondBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 320, self.view.bounds.size.width, 40)];
    [secondBtn addTarget:self action:@selector(secondBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    secondBtn.backgroundColor = [UIColor grayColor];
    [secondBtn setTitle:@"second Btn" forState:UIControlStateNormal];
    
    [self.view addSubview:secondLabel];
    [self.view addSubview:secondBtn];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)secondBtnClicked:(id)sender
{
    ThirdPageViewController *thirdVC = [[ThirdPageViewController alloc] init];
    [self.navigationController pushViewController:thirdVC animated:NO];
    _isPop = YES;
    
    
//    thirdVC.secondVC = self;
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
