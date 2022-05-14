//
//  FTChargeMoneyReturn.m
//  2.策略模式
//
//  Created by 花果山松鼠 on 2022/5/13.
//

#import "FTChargeMoneyReturn.h"

@interface FTChargeMoneyReturn()

/// 返利条件（满300 - 100），moneyCondition就是300
@property (nonatomic, assign) double moneyCondition;

/// 返利条件（满300 - 100），moneyReturn就是100
@property (nonatomic, assign) double moneyReturn;

@end

@implementation FTChargeMoneyReturn

+ (FTChargeMoneyReturn *)chargeMoneyWithMoneyCondition:(double)moneyCondition moneyReturn:(double)moneyReturn {
    return [[self alloc] initWithMoneyCondition:moneyCondition moneyReturn:moneyReturn];
}

- (FTChargeMoneyReturn *)initWithMoneyCondition:(double)moneyCondition moneyReturn:(double)moneyReturn {
    
    if (self = [super init]) {
        self.moneyCondition = moneyCondition;
        self.moneyReturn = moneyReturn;
    }
    return self;
}

- (double)chargeMoney:(double)money {
    
    // 如果购满金额大于返利条件，那么最终付款需要减去返利值
    if (money >= self.moneyCondition && self.moneyCondition > 0) {
        
        // 比如 满300-100，我买了689，其实就是 (689 / 300) * 100 = 2*100 = 200
        return money - (floor(money / self.moneyCondition) * self.moneyReturn);
    }
    return money;
}

@end
