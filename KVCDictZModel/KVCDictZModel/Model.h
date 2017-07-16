//
//  Model.h
//  KVCDictZModel
//
//  Created by MAC on 2017/7/16.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "BaseModel.h"
#import "Book.h"
#import "Person.h"

@interface Model : BaseModel

@property (nonatomic,copy)NSString *a;
@property (nonatomic,copy)NSString *ID;
@property (nonatomic,copy)NSString *str;

@property (nonatomic,strong)NSArray *perArray;

@property  (nonatomic,strong)Book *book1;

+ (instancetype)configWithDict:(NSDictionary *)dict;

@end
