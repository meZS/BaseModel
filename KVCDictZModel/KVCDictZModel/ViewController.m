//
//  ViewController.m
//  KVCDictZModel
//
//  Created by wordy on 2017/5/3.
//  Copyright © 2017年 golddatacommunications. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    
    // 模拟数据
    NSDictionary *dict = @{@"a":@"111",@"id":@"222",@"str":@"333",
                           @"perArray":@[@{
                                          @"nameww":@"猴子",@"age":
                                              [NSNumber numberWithInt:18],@"height":
                                              [NSNumber numberWithInt:178],
                           

                                       },@{
                                          @"name":@"不知火舞",@"age":
                                              [NSNumber numberWithInt:12],@"height":
                                              [NSNumber numberWithInt:165],
                                           }
                                     ,@{
                                          @"name":@"扁鹊",@"age":
                                              [NSNumber numberWithInt:11],@"height":
                                              [NSNumber numberWithInt:162],
                                        }],
                           @"book":@{@"bookname":@"海边的卡夫卡",@"price44":@"888",@"page":@"520"},
                          };
    
    
    
    
    Model *mod = [Model configWithDict:dict];
  
    

    
    Person *p = mod.perArray[0];
    Book *book = mod.book1;
    int aaa = p.age;
    
    NSLog(@"==%d",aaa);
    
    NSLog(@"\n==%@\n==%@\n==%@\n",mod.a,mod.ID,mod.str);
    NSLog(@"\nname==%@\nage==%d\nheight==%f\n",p.name,p.age,p.height);
    
    NSLog(@"==%@===%@==%@",book.bookname,book.page,book.price);
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
