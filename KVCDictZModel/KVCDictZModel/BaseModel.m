
//
//  BaseModel.m
//  KVCDictZModel
//
//  Created by MAC on 2017/7/16.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (!dict || ![dict isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    if (self = [super init]) {
        // 字典转模型语句
        [self setValuesForKeysWithDictionary:dict];
    }
    return  self;
}
+ (instancetype)configWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

// kvc 避免字典中找不到对应的key
- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    NSLog(@" Undefined Key: %@ in %@",key,[self class]);
}

@end
