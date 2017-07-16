//
//  BaseModel.h
//  KVCDictZModel
//
//  Created by MAC on 2017/7/16.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - // 支持int/float/double,bool类型属性定义
@interface BaseModel : NSObject


- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)configWithDict:(NSDictionary *)dict;

@end
