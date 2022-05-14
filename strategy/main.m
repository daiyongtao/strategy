//
//  main.m
//  strategy
//
//  Created by 花果山松鼠 on 2022/5/14.
//
// 例子：商场收银系统（支持打折、支持满减、支持返利）

#import <Foundation/Foundation.h>

#import "FTChargeMoney.h"
#import "FTChargeContext.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        FTChargeContext *chargeContext1 = [FTChargeContext contextWithChargeMoneyType:FTChargeNormalType];
        double result1 = [chargeContext1 getResult:689];
        
        FTChargeContext *chargeContext2 = [FTChargeContext contextWithChargeMoneyType:FTChargeRebateType];
        double result2 = [chargeContext2 getResult:689];
        
        FTChargeContext *chargeContext3 = [FTChargeContext contextWithChargeMoneyType:FTChargeReturnType];
        double result3 = [chargeContext3 getResult:689];
        
        NSLog(@"\n正常收费：%.2f \n打八折：%.2f \n满300-100返利：%.2f", result1, result2, result3);
    }
    return 0;
}
