//
//  Book.h
//  KVCDictZModel
//
//  Created by MAC on 2017/7/16.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "BaseModel.h"

@interface Book : BaseModel

@property (nonatomic,copy)NSString *bookname;
@property (nonatomic,copy)NSString *price;
@property (nonatomic,copy)NSString *page;


@end
