//
//  FTChargeContext.h
//  strategy
//
//  Created by 花果山松鼠 on 2022/5/14.
//

#import <Foundation/Foundation.h>
#import "FTEnumDefine.h"

NS_ASSUME_NONNULL_BEGIN

@class FTChargeMoney;
@interface FTChargeContext : NSObject

/// 收费context，维护一个对策略对象的引用
/// @param chargeMoneyType 收费策略
/// @return 收费context
+ (FTChargeContext *)contextWithChargeMoneyType:(FTChargeMoneyType)chargeMoneyType;

/// 获取最后收费
- (double)getResult:(double)money;

@end

NS_ASSUME_NONNULL_END
