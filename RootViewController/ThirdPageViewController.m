//
//  ThirdPageViewController.m
//  RootViewController
//
//  Created by guafei on 14-8-19.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import "ThirdPageViewController.h"

@interface ThirdPageViewController ()

@end

@implementation ThirdPageViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *thirdLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 40)];
    thirdLabel.textAlignment = NSTextAlignmentCenter;
    thirdLabel.text = @"third page";
    thirdLabel.textColor = [UIColor blueColor];
    
    UIButton *thirdBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 320, self.view.bounds.size.width, 40)];
    [thirdBtn addTarget:self action:@selector(thirdBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    thirdBtn.backgroundColor = [UIColor grayColor];
    [thirdBtn setTitle:@"third Btn" forState:UIControlStateNormal];
    
    [self.view addSubview:thirdLabel];
    [self.view addSubview:thirdBtn];
    
    //http://stackoverflow.com/questions/19365260/self-navigationcontroller-poptorootviewcontrolleranimatedyes-do-not-pop-back-to
    
    self.navigationItem.hidesBackButton = YES;
    UIBarButtonItem *backBtn =[[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStyleDone target:self action:@selector(popToRoot:)];
    self.navigationItem.leftBarButtonItem=backBtn;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)thirdBtnClicked:(id)sender
{
    
}

- (IBAction)popToRoot:(UIBarButtonItem*)sender {
    [self.navigationController popToRootViewControllerAnimated:YES];
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
