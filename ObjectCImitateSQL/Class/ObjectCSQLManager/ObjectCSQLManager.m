//
//  ObjectCSQLManager.m
//  ObjectCImitateSQL
//
//  Created by WangShengFeng on 2016/05/31.
//  Copyright © 2016年 WangShengFeng. All rights reserved.
//

#import "ObjectCSQLManager.h"
#import "NSObject+WangSF_NSArrayCustomExtends.h"

static ObjectCSQLManager *_sharedInstance;

@implementation ObjectCSQLManager

#pragma mark -
#pragma mark - LifeCyle
+ (id)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [super allocWithZone:zone];
    });
    return _sharedInstance;
}
+(id)sharedInstance{
    return  [[self alloc] init];
}


-(NSArray *)selectListFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value{
    NSMutableArray *retArray = [NSMutableArray array];
    if(nil == key || nil == value){
        return retArray;
    }
    //All has The Key
    for (id data in tableArray) {
        if([[data valueStringForProperty:key] isEqualToString:value]){
            [retArray addObject:data];
        }
    }
    return retArray;
}

-(NSInteger )selectCountFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value{
    return [[self selectListFromTable:tableArray key:key value:value] count];
}

-(NSArray *)selectDistinctFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value{
    NSArray *arr = [self selectListFromTable:tableArray key:key value:value];
    NSSet *set = [NSSet setWithArray:arr];
    NSArray *retArray = [set allObjects];
    
    return retArray;
}


-(NSArray *)selectKeyArray:(NSArray *)dArray table:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value{
    NSArray *arr = [self selectListFromTable:tableArray key:key value:value];
    NSMutableArray *retArray = [NSMutableArray array];
    
    if([arr count]>0){
//#if K_Is_Not_MustDictonary
//        NSString *className = [NSString stringWithUTF8String:object_getClassName([arr firstObject])];
//        if([className rangeOfString:@"NSDictionary"].location != NSNotFound){
//            className = @"NSMutableDictionary";
//        }
//        else if([className rangeOfString:@"NSArray"].location != NSNotFound){
//            className = @"NSMutableArray";
//        }
//        else if([className rangeOfString:@"NSString"].location != NSNotFound){
//            className = @"NSMutableString";
//        }
//        Class class = NSClassFromString(className);
//#else
        Class class = NSClassFromString(@"NSMutableDictionary"); //目前只实现了返回字典数据
//#endif
        if(NULL != class){
            for (NSObject * data in arr) {
                id d = [[class alloc] init];
                for (NSString *propertyKey in dArray)
                {
                    [d setValue:[data valueForProperty:propertyKey] forProperty:propertyKey];
                }
                [retArray addObject:d];
            }

        }
    }
    return retArray;
}

-(NSArray *)selectDistinctKeyArray:(NSArray *)dArray table:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value{
    NSMutableArray *retArray = (NSMutableArray *)[self selectKeyArray:dArray table:tableArray key:key value:value];
    
    NSSet *set = [NSSet setWithArray:retArray];
     [retArray setArray:[set allObjects]];
    return retArray;
}

#pragma mark -
#pragma mark - Mutable
///[singleTable]: fetch all dataList: implement: Select * From TableArray Where key1 = value1 and key2 = value2 and ...
-(NSArray* )selectListFromTable:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values{
    NSMutableArray *retArray = [NSMutableArray array];
    if(nil == keys || nil == values){
        return retArray;
    }
    if(![keys isKindOfClass:[NSArray class]] || ![values isKindOfClass:[NSArray class]]){
        return retArray;
    }
    if(keys.count<=0 || values.count<=0){
        return retArray;
    }
    if(keys.count != values.count){
        return retArray;
    }
    //All has The Key
    for (id data in tableArray) {
        NSInteger isEqual = 0;
        NSInteger count = keys.count;
        
        for (NSInteger index = 0;index<count;index++) {
            NSString *key = keys[index];
            NSString *value = values[index];
            
            if([[data valueStringForProperty:key] isEqualToString:value]){
                isEqual++;
            }
        }
        if(isEqual == count){
            [retArray addObject:data];
        }
    }
    return retArray;
}
///[singleTable]: base key to get Distinct list: implement: Select Distinct a,b,c  From TableArray Where key = value
-(NSArray *)selectKeyArray:(NSArray *)dArray table:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values{
    NSMutableArray *retArray = [NSMutableArray array];
    NSArray *arr = [self selectListFromTable:tableArray keys:keys values:values];
    
    if([arr count]>0){
        Class class = NSClassFromString(@"NSMutableDictionary"); //目前只实现了返回字典数据
        //#endif
        if(NULL != class){
            for (NSObject * data in arr) {
                id d = [[class alloc] init];
                for (NSString *propertyKey in dArray)
                {
                    [d setValue:[data valueForProperty:propertyKey] forProperty:propertyKey];
                }
                [retArray addObject:d];
            }
            
        }
    }
    return retArray;
}
///[singleTable]: base key to get Distinct list: implement: Select Distinct a,b,c  From TableArray Where key1 = value1 and key2 = value2
-(NSArray *)selectDistinctKeyArray:(NSArray *)dArray table:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values{
    NSMutableArray *retArray = [NSMutableArray array];
    NSArray *arr = [self selectKeyArray:dArray table:tableArray keys:keys values:values];
    
    NSSet *set = [NSSet setWithArray:arr];
    [retArray setArray:[set allObjects]];
    return retArray;
}
@end
