//
//  AppDelegate.h
//  Common
//
//  Created by pactera on 14-12-26.
//  Copyright (c) 2014年 pactera. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CommViewController * currentViewController;

@end
