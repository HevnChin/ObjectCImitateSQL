//
//  NSObject+WangSF_NSArrayCustomExtends.h
//  ObjectCImitateSQL

//2016-05-31 14;22:26
//we will update for future ,you could get by below github URL
//if you have any questions please give me Email : iwangshengfeng@163.com
//  git@github.com:WSFeng/ObjectCImitateSQL.git


//
//  Created by WangShengFeng on 2016/05/31.
//  Copyright © 2016年 WangShengFeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (WangSF_NSArrayCustomExtends)

#pragma mark -
#pragma mark - CustomValueForKey

///Get Model's StringOfValue For Key
-(id)valueStringForProperty:(NSString *)key;
///Get Model's ArrayOfValue For Key
-(id)valueArrayForProperty:(NSString *)key;
///Get Model's NumberOfValue For Key
-(id)valueNumberForProperty:(NSString *)key;
///Get Model's DictionaryOfValue For Key
-(id)valueDictionaryForProperty:(NSString *)key;

#pragma mark -
#pragma mark - ValueForKey
///Set Model's Value For Key [if error return NO otherwise YES And Set]
- (BOOL)setValue:(id)value forProperty:(NSString *)property;
- (id)valueForProperty:(NSString *)key;
@end
