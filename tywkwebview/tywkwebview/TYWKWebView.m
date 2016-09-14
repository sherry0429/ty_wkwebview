//
//  TYWKWebView.m
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import "TYWKWebView.h"

#pragma mark MessageHandlers

@interface TYMessageHandlers : NSObject<WKScriptMessageHandler>

@end

@implementation TYMessageHandlers

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message{
    
}

@end

#pragma mark WKConfiguration

@interface TYWKConfiguration : NSObject

@property(nonatomic,strong)WKWebViewConfiguration *TYconfiguration;

@end

@implementation TYWKConfiguration



@end




@implementation TYWKWebView

- (WKNavigation *)loadRequest:(NSURLRequest *)request{
    return [super loadRequest:request];
}

- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler{
    decisionHandler(WKNavigationActionPolicyAllow);
}

- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation{
    ;
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation{
    ;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
