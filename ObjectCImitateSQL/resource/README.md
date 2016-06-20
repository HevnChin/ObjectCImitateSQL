# ObjectCImitateSQL
ObjectC simulation functionality to SQL data to facilitate front-end query data[模拟SQL机制操作ObjectC对象]

[You IOS used Must >=7.0]

we will update for future ,you could get by below github URL
if you have any questions please give me Email : iwangshengfeng@163.com
Choose ObjectCImitateSQL for your next project, or migrate over your existing projects—you'll be happy you did!

## How To Get Started

- [Download ObjectCImitateSQL](https://github.com/WSFeng/ObjectCImitateSQL/archive/master.zip) and try out the included Mac and iPhone example apps

## Communication

- If you **need help**, could send Email to  [iwangshengfeng@163.com]
- If you'd like to **ask a general question**, could send Email to  [iwangshengfeng@163.com]
- If you **found a bug**, could send Email to  [iwangshengfeng@163.com]
- If you **have a feature request**, could send Email to  [iwangshengfeng@163.com]

## Installation
ObjectCImitateSQL supports multiple methods for installing the library in a project.


## Upgrade instructions 

##1.0
```objective-c
///[singleTable]: fetch all dataList: implement: Select * From TableArray Where key = value
-(NSArray *)selectListFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;
///[singleTable]: fetch count of dataList: implement: Select count(*) From TableArray Where key = value
-(NSInteger )selectCountFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;
///[singleTable]: fetch all Distinct dataList: implement: Select Distinct * From TableArray Where key = value
-(NSArray *)selectDistinctFromTable:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;


///[singleTable]: base key to get list: implement: Select key1 key2 From TableArray Where key = value
-(NSArray *)selectKeyArray:(NSArray *)dArray table:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;
///[singleTable]: base keys to get list: implement: Select key1 key2 From TableArray Where key1 = value1 and key2 = value2 and ...
-(NSArray* )selectKeyArray:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values;
///[singleTable]: base key to get Distinct list: implement: Select Distinct a,b,c  From TableArray Where key = value
-(NSArray *)selectDistinctKeyArray:(NSArray *)dArray table:(NSArray *)tableArray key:(NSString *)key value:(NSString *)value;
```

##1.1
```objective-c
///<singleTable>: fetch all dataList: implement: Select * From TableArray Where key1 = value1 and key2 = value2 and ...
-(NSArray* )selectListFromTable:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values;


///<singleTable>: base keys to get list: implement: Select a,b,c  From TableArray Where key1 = value1 and key2 = value2
-(NSArray *)selectKeyArray:(NSArray *)dArray table:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values;

///<singleTable>: base keys to get Distinct list: implement: Select Distinct a,b,c  From TableArray Where key1 = value1 and key2 = value2
-(NSArray *)selectDistinctKeyArray:(NSArray *)dArray table:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values;
```

##1.2
```objective-c
///兼容:value包含 NSNumber/NSDictionary/NSArray/ 类似@(2), 就算是 数字类型也可以进行 where条件的比对
```


## License

ObjectCImitateSQL is released under the WangSF license. See LICENSE for details.
