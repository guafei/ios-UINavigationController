//
//  SecondPageViewController.h
//  RootViewController
//
//  Created by guafei on 14-8-19.
//  Copyright (c) 2014年 guafei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstPageViewController.h"

@interface SecondPageViewController : UIViewController
{
    BOOL _isPop;
}

@property (nonatomic,strong)FirstPageViewController *firstVC;

@end