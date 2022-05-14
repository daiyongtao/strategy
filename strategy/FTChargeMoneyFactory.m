//
//  FTChargeMoneyFactory.m
//  2.策略模式
//
//  Created by 花果山松鼠 on 2022/5/13.
//

#import "FTChargeMoneyFactory.h"
#import "FTChargeMoneyRebate.h"
#import "FTChargeMoneyReturn.h"

@implementation FTChargeMoneyFactory

+ (FTChargeMoney *)createChargeMoney:(FTChargeMoneyType)chargeMoneyType {
    
    FTChargeMoney *chargeMoney;
    
    switch (chargeMoneyType) {
        case FTChargeNormalType : // 正常
            chargeMoney = [[FTChargeMoney alloc] init];
            break;
        case FTChargeRebateType: // 折扣为0.8
            chargeMoney = [FTChargeMoneyRebate initWithRebate:0.8];
            break;
        case FTChargeReturnType: // 返利 满300-100
            chargeMoney = [FTChargeMoneyReturn initWithMoneyCondition:300.0 moneyReturn:100.0];
            break;
        default:
            break;
    }
    
    return chargeMoney;
}

@end
