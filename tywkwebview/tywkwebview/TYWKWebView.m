//
//  TYWKWebView.m
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import "TYWKWebView.h"

@implementation TYWKWebView

- (instancetype)initWithFrame:(CGRect)frame configuration:(WKWebViewConfiguration *)configuration{
    return [super initWithFrame:frame configuration:configuration];
}

- (WKNavigation *)loadRequest:(NSURLRequest *)request{
    NSLog(@"loadRequest");
    return [super loadRequest:request];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
