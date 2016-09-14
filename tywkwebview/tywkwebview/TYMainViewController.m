//
//  TYMainViewController.m
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import "TYMainViewController.h"
#import "TYWKWebViewController.h"

@interface TYMainViewController ()

@property(nonatomic,strong)TYWKWebViewController *webviewController;

@end

@implementation TYMainViewController

- (void)viewDidLoad {
    _webviewController = [[TYWKWebViewController alloc]init];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    [self.navigationController pushViewController:_webviewController animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
