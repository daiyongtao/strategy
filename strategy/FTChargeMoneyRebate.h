//
//  FTChargeMoneyRebate.h
//  2.策略模式
//
//  Created by 花果山松鼠 on 2022/5/13.
//

#import "FTChargeMoney.h"

NS_ASSUME_NONNULL_BEGIN

/// 打折收费
@interface FTChargeMoneyRebate : FTChargeMoney

/// 初始化方法
/// @param rebate 折扣
+ (FTChargeMoneyRebate *)initWithRebate:(double)rebate;

@end

NS_ASSUME_NONNULL_END
