//
//  TYWKConfiguration.m
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import "TYWKConfiguration.h"

@implementation TYWKConfiguration

-(instancetype)init{
    _TYconfiguration = [[WKWebViewConfiguration alloc]init];
    if(![self setWKConfiguration:_TYconfiguration]){
        NSLog(@"WKWebView configuration setting failed.");
    }
    return [super init];
}

- (bool)setWKConfiguration:(WKWebViewConfiguration *)configutaion{
    return true;
}

@end
