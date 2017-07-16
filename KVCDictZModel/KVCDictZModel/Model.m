//
//  Model.m
//  KVCDictZModel
//
//  Created by MAC on 2017/7/16.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "Model.h"



@implementation Model
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (!dict || ![dict isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
        
        for (NSString *key in [dict allKeys]) {
            id value = dict[key];
            //1.处理对象类型和数组类型
            if ([value isKindOfClass:[NSArray class]]) {
                //创建一个可变数组加载perArray
                NSMutableArray *soldArray = [NSMutableArray array];
                for (NSDictionary *dic in self.perArray) {
                    Person  *model = [[Person alloc] initWithDict:dic];
                    [soldArray addObject:model];
                }
                self.perArray = soldArray;

            }else if ([value isKindOfClass:[NSDictionary class]])
            {
                self.book1  = [[Book alloc] initWithDict:[dict objectForKey:key]];
            }
            //2.处理空类型:防止出现unRecognized selector exception
            else if ([value isKindOfClass:[NSNull class]]) {
                //                [self setValue:nil forKey:key];
            }
            
        }

        
    }
    return self;
}

+ (instancetype)configWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    if ([key isEqualToString:@"id"]) {
        self.ID = value;
    }
}
@end
