//
//  CommTabViewController.m
//  Common
//
//  Created by pactera on 14-12-26.
//  Copyright (c) 2014年 pactera. All rights reserved.
//

#import "CommTabViewController.h"
#import "CommNavViewController.h"
#import "CommViewController.h"

@interface CommTabViewController ()

@end

@implementation CommTabViewController

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
    
    NSArray * classNameArray = @[@"HomeViewController",@"ListViewController",@"ProductViewController",@"SettingViewController"];
    
    NSArray * nameArray = @[@"首页",@"列表",@"商品",@"设置"];
    
    NSMutableArray * controllerArray = [[[NSMutableArray alloc] init] autorelease];
    for (int i = 0; i<[classNameArray count]; i++) {
        
        CommViewController * viewController = [[[NSClassFromString([classNameArray objectAtIndex:i]) alloc] init] autorelease];
        
        //设置title
        CommNavViewController * navViewController = [[[CommNavViewController alloc] initWithRootViewController:viewController] autorelease];
        
        navViewController.title = [nameArray objectAtIndex:i];
        
        [controllerArray addObject:navViewController];
    }
    
    self.viewControllers = controllerArray;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
