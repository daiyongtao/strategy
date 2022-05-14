//
//  main.m
//  strategy
//
//  Created by 花果山松鼠 on 2022/5/14.
//
// 例子：商场收银系统（支持打折、支持满减、支持返利）

#import <Foundation/Foundation.h>

#import "FTChargeMoney.h"
#import "FTChargeMoneyFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FTChargeMoney *chargeMoney1 = [FTChargeMoneyFactory createChargeMoney:FTChargeNormalType];
        double result1 = [chargeMoney1 chargeMoney:689];
        
        FTChargeMoney *chargeMoney2 = [FTChargeMoneyFactory createChargeMoney:FTChargeRebateType];
        double result2 = [chargeMoney2 chargeMoney:689];
        
        FTChargeMoney *chargeMoney3 = [FTChargeMoneyFactory createChargeMoney:FTChargeReturnType];
        double result3 = [chargeMoney3 chargeMoney:689];
        NSLog(@"\n正常收费：%.2f \n打八折：%.2f \n满300-100返利：%.2f", result1, result2, result3);
    }
    return 0;
}
