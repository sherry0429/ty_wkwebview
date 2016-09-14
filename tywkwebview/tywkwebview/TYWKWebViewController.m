//
//  TYWKWebViewController.m
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import "TYWKWebViewController.h"
#import "TYWKWebView.h"
#import "TYWKConfiguration.h"

@interface TYWKWebViewController ()

@property(nonatomic,strong)WKWebView *webView;
@property(nonatomic,strong)TYWKConfiguration *configuration;
@end

@implementation TYWKWebViewController

- (void)viewDidLoad {
    _configuration = [[TYWKConfiguration alloc]init];
    _webView = [[WKWebView alloc]initWithFrame:[UIScreen mainScreen].bounds configuration:_configuration.TYconfiguration];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated{
    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
    [self.view addSubview:_webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    NSLog(@"start");
    if (navigationAction.targetFrame == nil) {
        [webView loadRequest:navigationAction.request];
    }
    decisionHandler(WKNavigationActionPolicyAllow);
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationResponse:(WKNavigationResponse *)navigationResponse decisionHandler:(void (^)(WKNavigationResponsePolicy))decisionHandler{
    decisionHandler(WKNavigationResponsePolicyAllow);
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    NSLog(@"commit");
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    NSLog(@"finish");
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
