//
//  Custom.h
//  ObjectCImitateSQL
//
//  Created by WangShengFeng on 2016/05/31.
//  Copyright © 2016年 WangShengFeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Custom : NSObject
@property (nonatomic, copy) NSString *dataString;
@property (nonatomic, strong) NSNumber *dataNumber;
@property (nonatomic, assign) NSInteger dataInt;
@property (nonatomic, copy) NSString *dataOpen;
@property (nonatomic, copy) NSString *dataFrom;
@property (nonatomic, strong) NSDictionary *dataInfo;
@end
