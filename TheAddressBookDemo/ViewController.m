//
//  ViewController.m
//  TheAddressBookDemo
//
//  Created by YangLei on 16/3/15.
//  Copyright © 2016年 YangLei. All rights reserved.
//

#import "ViewController.h"
#import "YLAddBookViewController.h"
#define WINTHSCREEN  ([UIScreen mainScreen].bounds.size.width)

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake((WINTHSCREEN-200)/2, 200, 200, 100);
    button.backgroundColor = [UIColor purpleColor];
    [button setTitle:@"点击进入客户管理" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)pressBtn:(id)sender{
    
    YLAddBookViewController * second = [[YLAddBookViewController alloc]init];
    [self.navigationController pushViewController:second animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
