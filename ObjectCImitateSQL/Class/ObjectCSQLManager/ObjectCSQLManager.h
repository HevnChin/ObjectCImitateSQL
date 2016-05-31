//
//  ObjectCSQLManager.h
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


//#define K_Is_Not_MustDictonary 1

@interface ObjectCSQLManager : NSObject
+(id)sharedInstance;


#pragma mark -
#pragma mark - OneTable
///[singleTable]: fetch all dataList: implement: Select * From TableArray Where key = value
-(NSArray *)selectListFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;
///[singleTable]: fetch count of dataList: implement: Select count(*) From TableArray Where key = value
-(NSInteger )selectCountFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;
///[singleTable]: fetch all Distinct dataList: implement: Select Distinct * From TableArray Where key = value
-(NSArray *)selectDistinctFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;


///[singleTable]: 查出所有列表: implement: Select key1 key2 From TableArray Where key = value
-(NSArray *)selectKeyArray:(NSArray *)dArray table:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;
///[singleTable]: 查出所有去重列表: implement: Select Distinct a,b,c  From TableArray Where key = value
-(NSArray *)selectDistinctKeyArray:(NSArray *)dArray table:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;


@end
