//
//  TYWKMessageHandlers.m
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import "TYWKMessageHandlers.h"

@implementation TYWKMessageHandlers

- (instancetype)initWithDelegate:(id<WKScriptMessageHandler>)delegate
{
    self = [super init];
    if (self) {
        _messageHandler = delegate;
    }
    return self;
}

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message
{
    [self.messageHandler userContentController:userContentController didReceiveScriptMessage:message];
}


@end
