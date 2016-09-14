//
//  TYWKMessageHandlers.h
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <webkit/webkit.h>

@interface TYWKMessageHandlers : NSObject<WKScriptMessageHandler>

@property (nonatomic, weak) id<WKScriptMessageHandler> messageHandler;

- (instancetype)initWithDelegate:(id<WKScriptMessageHandler>)delegate;

@end
