//
//  TYMainViewController.m
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import "TYMainViewController.h"
#import "TYWKWebView.h"

@interface TYMainViewController ()

@property(nonatomic,strong)UITableView *TYTableView;
@property(nonatomic,strong)TYWKWebView *webView;

@end

@implementation TYMainViewController

- (void)viewDidLoad {
    _webView = [[TYWKWebView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:_webView];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
