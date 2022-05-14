//
//  FTChargeContext.m
//  strategy
//
//  Created by 花果山松鼠 on 2022/5/14.
//

#import "FTChargeContext.h"
#import "FTChargeMoney.h"
#import "FTChargeMoneyRebate.h"
#import "FTChargeMoneyReturn.h"

@interface FTChargeContext()

@property (nonatomic, strong) FTChargeMoney *chargeMoney;

@end

@implementation FTChargeContext

+ (FTChargeContext *)contextWithChargeMoneyType:(FTChargeMoneyType)chargeMoneyType {
    return [[self alloc] initWithChargeMoneyType:chargeMoneyType];
}

- (FTChargeContext *)initWithChargeMoneyType:(FTChargeMoneyType)chargeMoneyType {
    
    if (self = [super init]) {
        
        FTChargeMoney *chargeMoney;
        
        switch (chargeMoneyType) {
            case FTChargeNormalType : // 正常
                chargeMoney = [[FTChargeMoney alloc] init];
                break;
            case FTChargeRebateType: // 折扣为0.8
                chargeMoney = [FTChargeMoneyRebate chargeMoneyWithRebate:0.8];
                break;
            case FTChargeReturnType: // 返利 满300-100
                chargeMoney = [FTChargeMoneyReturn chargeMoneyWithMoneyCondition:300.0 moneyReturn:100.0];
                break;
            default:
                break;
        }
        
        self.chargeMoney = chargeMoney;
    }
    return self;
}

- (double)getResult:(double)money {
    return [self.chargeMoney chargeMoney:money];
}

@end
