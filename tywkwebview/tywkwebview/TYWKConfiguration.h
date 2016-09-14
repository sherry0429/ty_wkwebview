//
//  TYWKConfiguration.h
//  tywkwebview
//
//  Created by 潘天佑 on 16/9/14.
//  Copyright © 2016年 潘天佑. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TYWKMessageHandlers.h"

@interface TYWKConfiguration : NSObject

@property(nonatomic,strong)WKWebViewConfiguration *TYconfiguration;

-(bool)setWKConfiguration:(WKWebViewConfiguration*)configutaion;

@end
