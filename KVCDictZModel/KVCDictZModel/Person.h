//
//  Person.h
//  KVCDictZModel
//
//  Created by MAC on 2017/7/16.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "BaseModel.h"

@interface Person : BaseModel


// 支持int/float/double,bool类型
@property (nonatomic,copy)NSString *name;
@property (nonatomic,assign)int age;
@property (nonatomic,assign)float height;


@end
