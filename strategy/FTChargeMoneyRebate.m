//
//  FTChargeMoneyRebate.m
//  2.策略模式
//
//  Created by 花果山松鼠 on 2022/5/13.
//

#import "FTChargeMoneyRebate.h"

@interface FTChargeMoneyRebate()

/// 折扣
@property (nonatomic, assign) double rebate;

@end

@implementation FTChargeMoneyRebate

+ (FTChargeMoneyRebate *)initWithRebate:(double)rebate {
    return [[self alloc] initWithRebate:rebate];
}

- (FTChargeMoneyRebate *)initWithRebate:(double)rebate {
    
    if (self = [super init]) {
        self.rebate = rebate;
    }
    return self;
}

- (double)chargeMoney:(double)money {
    return money * self.rebate;
}

@end
