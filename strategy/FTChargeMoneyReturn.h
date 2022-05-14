//
//  FTChargeMoneyReturn.h
//  2.策略模式
//
//  Created by 花果山松鼠 on 2022/5/13.
//

#import "FTChargeMoney.h"

NS_ASSUME_NONNULL_BEGIN

/// 返利收费
@interface FTChargeMoneyReturn : FTChargeMoney

/// 初始化方法
/// @param moneyCondition 返利条件（满300 - 100），moneyCondition就是300
/// @param moneyReturn 返利条件（满300 - 100），moneyReturn就是100
/// @return 返利收费实例
+ (FTChargeMoneyReturn *)chargeMoneyWithMoneyCondition:(double)moneyCondition moneyReturn:(double)moneyReturn;

@end

NS_ASSUME_NONNULL_END
