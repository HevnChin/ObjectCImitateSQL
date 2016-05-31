# ObjectCImitateSQL
ObjectC simulation functionality to SQL data to facilitate front-end query data[模拟SQL机制操作ObjectC对象]


we will update for future ,you could get by below github URL
if you have any questions please give me Email : iwangshengfeng@163.com

1.1new add Methods
///<singleTable>: fetch all dataList: implement: Select * From TableArray Where key1 = value1 and key2 = value2 and ...

-(NSArray* )selectListFromTable:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values;

///<singleTable>: base keys to get list: implement: Select a,b,c  From TableArray Where key1 = value1 and key2 = value2

-(NSArray *)selectKeyArray:(NSArray *)dArray table:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values;

///<singleTable>: base keys to get Distinct list: implement: Select Distinct a,b,c  From TableArray Where key1 = value1 and key2 = value2

-(NSArray *)selectDistinctKeyArray:(NSArray *)dArray table:(NSArray *)tableArray keys:(NSArray *)keys values:(NSArray *)values;