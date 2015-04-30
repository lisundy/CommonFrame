//
//  IndexView.m
//  Common
//
//  Created by pactera on 14-12-26.
//  Copyright (c) 2014年 pactera. All rights reserved.
//

#import "IndexView.h"
#import "CommViewController.h"

@implementation IndexView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) createContentView
{
    
    //设置偏移量
    float offet = 20;
    float btnWidth = self.frame.size.width/3-offet;
    float btnHeigh = self.frame.size.height/3-offet;
    
    NSArray * titleArray = @[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9"];
    
    NSMutableArray * btnNameArray = [[[NSMutableArray alloc] initWithArray:titleArray] autorelease];
    
    NSArray * colorArray = [[NSArray alloc] initWithObjects:[UIColor redColor],[UIColor yellowColor],[UIColor greenColor],[UIColor blueColor],[UIColor brownColor],[UIColor cyanColor],[UIColor darkTextColor] ,[UIColor darkGrayColor],[UIColor clearColor],nil];
    
    for (int i = 0; i<[btnNameArray count]; i++) {
        
        CGRect rect ;
        rect.size.height = btnHeigh;
        rect.size.width = btnWidth;
        rect.origin.x = i * btnWidth + offet;
        rect.origin.y = i * btnHeigh + offet;
        
        UIButton * btn = [[[UIButton alloc] initWithFrame:rect] autorelease];
        
        [btn setBackgroundColor:[colorArray objectAtIndex:i]];
        
        btn.tag = i;
        
        [btn addTarget:self action:@selector(btnPress:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    [colorArray release];
}

- (void) btnPress:(UIButton *) btn
{
    int tag = btn.tag;
    
    switch (tag) {
        case 1:
            
            break;
        case 2:
            
            break;
        case 3:
            
            break;
        case 4:
            
            break;
        case 5:
            
            break;
        case 6:
            
            break;
        case 7:
            
            break;
        case 8:
            
            break;
        case 9:
            
            break;
            
        default:
            break;
    }
    
    
}



@end
