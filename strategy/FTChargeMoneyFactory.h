//
//  FTChargeMoneyFactory.h
//  2.策略模式
//
//  Created by 花果山松鼠 on 2022/5/13.
//

#import <Foundation/Foundation.h>
#import "FTEnumDefine.h"
@class FTChargeMoney;

NS_ASSUME_NONNULL_BEGIN

/// 收费工厂
@interface FTChargeMoneyFactory : NSObject

/// 通过chargeMoneyType创建对应的收费实例
/// @param chargeMoneyType 收费类型
+ (FTChargeMoney *)createChargeMoney:(FTChargeMoneyType)chargeMoneyType;


@end

NS_ASSUME_NONNULL_END
