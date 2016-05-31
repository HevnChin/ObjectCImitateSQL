//
//  NSObject+WangSF_NSArrayCustomExtends.m
//  ObjectCImitateSQL
//
//  Created by WangShengFeng on 2016/05/31.
//  Copyright © 2016年 WangShengFeng. All rights reserved.
//

#import "NSObject+WangSF_NSArrayCustomExtends.h"
//#import <objc/runtime.h>

@implementation NSObject (WangSF_NSArrayCustomExtends)

#pragma mark -
#pragma mark - CustomValueForKey
-(id)valueStringForProperty:(NSString *)key{
    id ret = [self valueForProperty:key className:NSStringFromClass([NSString class])];
    return ret;
}
-(id)valueArrayForProperty:(NSString *)key{
    id ret = [self valueForProperty:key className:NSStringFromClass([NSArray class])];
    return ret;
}
-(id)valueNumberForProperty:(NSString *)key{
    id ret = [self valueForProperty:key className:NSStringFromClass([NSNumber class])];
    return ret;
}
-(id)valueDictionaryForProperty:(NSString *)key{
    id ret = [self valueForProperty:key className:NSStringFromClass([NSDictionary class])];
    return ret;
}
#pragma mark -
#pragma mark - ValueForKey
- (BOOL)setValue:(id)value forProperty:(NSString *)property{
    if(nil == value || nil == property){
        return NO;
    }
    @try{
        [self setValue:value forKeyPath:property];
        return YES;
    } @catch (NSException *exception) {
        return NO;
    }
}
-(id)valueForProperty:(NSString *)key{
    id ret = [self valueForProperty:key className:nil];
    return ret;
}
-(id)valueForProperty:(NSString *)key className:(NSString *)className{
    id ret = nil;
    @try{
        ret = [self valueForKeyPath:key];
    } @catch (NSException *exception) {
        if(nil != className && [className isKindOfClass:[NSString class]] && className.length>0){
            Class class  = NSClassFromString(className);
            if(class){
                ret = [[class alloc] init];
            }
        }
    } @finally {
        return ret;
    }
}

@end
