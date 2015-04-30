//
//  HomeViewController.m
//  Common
//
//  Created by pactera on 14-12-26.
//  Copyright (c) 2014年 pactera. All rights reserved.
//

#import "HomeViewController.h"
#import "IndexView.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    
    IndexView * indexView = [[[IndexView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)] autorelease];
    
    [self.view addSubview:indexView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


@end
