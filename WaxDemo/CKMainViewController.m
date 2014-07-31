//
//  CKMainViewController.m
//  WaxDemo
//
//  Created by 张超 on 14-7-31.
//  Copyright (c) 2014年 张超. All rights reserved.
//

#import "CKMainViewController.h"

@interface CKMainViewController ()

@property (nonatomic, retain) UIViewController *luaVC;

@end

@implementation CKMainViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showLuaView:(id)sender
{
    NSString *luaVCStr = @"CKLuaViewController";
    Class CKLuaViewControllerClass = NSClassFromString(luaVCStr);
    _luaVC = [[CKLuaViewControllerClass alloc] init];
    [self.navigationController pushViewController:_luaVC animated:YES];
}

@end
