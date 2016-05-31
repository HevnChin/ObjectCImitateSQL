//
//  ViewController.m
//  ObjectCImitateSQL
//
//  Created by WangShengFeng on 2016/05/30.
//  Copyright © 2016年 WangShengFeng. All rights reserved.
//

#import "ViewController.h"
#import "ObjectCSQLManager.h"
#import "Custom.h"

@interface ViewController ()
@property (nonatomic, strong) NSMutableArray *dataArray;
@end

@implementation ViewController

#pragma mark -
#pragma mark - LifeCyle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //test code by blow ...  ...
    NSMutableArray * sqlDataArray = [NSMutableArray array];
    
    NSDictionary *dict1 = @{@"id":@(1),
                            @"name":@"table",
                            @"standard":@"23*34",
                            @"color":@"red",
                            @"from":@"BeiJing",
                            @"count":@"99"
                            };
    NSDictionary *dict2 = @{@"id":@(2),
                            @"name":@"table",
                            @"standard":@"23*34",
                            @"color":@"green",
                            @"From": @"Taian city, Shandong province, China",
                            @"count":@"12"
                            };
    NSDictionary *dict3 = @{@"id":@(3),
                            @"name":@"table",
                            @"standard":@"23*37",
                            @"color":@"red",
                            @"from":@"ShangHai",
                            @"count":@"10"
                            };
    NSDictionary *dict4 = @{@"id":@(4),
                            @"name":@"desk",
                            @"standard":@"22*34",
                            @"color":@"red",
                            @"from":@"BeiJing",
                            @"count":@"19"
                            };
    NSDictionary *dict5 = @{@"id":@(5),
                            @"name":@"desk",
                            @"standard":@"22*34",
                            @"color":@"yellow",
                            @"From": @"Taian city, Shandong province, China",
                            @"count":@"2"
                            };
    NSDictionary *dict6 = @{@"id":@(5),
                            @"name":@"desk",
                            @"standard":@"22*34",
                            @"color":@"yellow",
                            @"From": @"Taian city, Shandong province, China",
                            @"count":@"2"
                            };
    [sqlDataArray addObject:dict1];
    [sqlDataArray addObject:dict2];
    [sqlDataArray addObject:dict3];
    [sqlDataArray addObject:dict4];
    [sqlDataArray addObject:dict5];
    [sqlDataArray addObject:dict6];
    
    self.dataArray = sqlDataArray;
    
   // NSArray *array = [[ObjectCSQLManager sharedInstance] selectListFromTable:_dataArray key:@"From" value:@"Taian city, Shandong province, China"];
    //NSInteger count = [[ObjectCSQLManager sharedInstance] selectCountFromTable:_dataArray key:@"From" value:@"Taian city, Shandong province, China"];
    
    //NSArray *arrayList = [[ObjectCSQLManager sharedInstance] selectDistinctFromTable:_dataArray key:@"From" value:@"Taian city, Shandong province, China"];
    
    //NSArray *arrayDList = [[ObjectCSQLManager sharedInstance] selectKeyArray:@[@"name", @"color"] table:_dataArray key:@"From" value:@"Taian city, Shandong province, China"];
    
    //NSLog(@"%@",array);
    //------------------------------//
    
    Custom *c1 = [Custom new];
    c1.dataInt = 1;
    c1.dataString = @"Beijing";
    c1.dataNumber = @(1);
    c1.dataOpen = @"YYYY-MM-dd";
    c1.dataFrom = @"Chaoyang, Beijing, China";
    c1.dataInfo = @{@"name":@"1",@"pro":@"NO"};
    
    Custom *c2 = [Custom new];
    c2.dataInt = 1;
    c2.dataString = @"Shanghai";
    c2.dataNumber = @(2);
    c2.dataOpen = @"YYYY-MM-dd HH";
    c2.dataFrom = @"Taian city, Shandong province, China";
    c2.dataInfo = @{@"name":@"2",@"pro":@"OK"};
    
    Custom *c3 = [Custom new];
    c3.dataInt = 1;
    c3.dataString = @"Nanjing";
    c3.dataNumber = @(2);
    c3.dataOpen = @"YYYY-MM-dd HH";
    c3.dataFrom = @"Taian city, Shandong province, China";
    c3.dataInfo = @{@"name":@"2",@"pro":@"OK"};
    
    [self.dataArray setArray:@[c1,c2,c3]];
    //NSArray *retArray = [[ObjectCSQLManager sharedInstance] selectDistinctKeyArray:@[@"dataOpen", @"dataFrom"] table:_dataArray key:@"dataFrom" value:@"Taian city, Shandong province, China"];
    NSArray *retArray1 = [[ObjectCSQLManager sharedInstance] selectDistinctKeyArray:@[@"dataOpen", @"dataFrom"] table:_dataArray keys:@[@"dataInfo",@"dataNumber"] values:@[@{@"name":@"2",@"pro":@"OK"},@(2)]];
    NSArray *retArray2 = [[ObjectCSQLManager sharedInstance] selectKeyArray:@[@"dataOpen", @"dataFrom"] table:_dataArray keys:@[@"dataInfo",@"dataNumber"] values:@[@{@"name":@"2",@"pro":@"OK"},@(2)]];
    NSArray *retArray3 = [[ObjectCSQLManager sharedInstance] selectKeyArray:@[@"dataOpen", @"dataFrom"] table:_dataArray keys:@[@"dataInt",@"dataNumber"] values:@[@(1),@(2)]];
}

@end
