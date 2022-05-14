//
//  FTEnumDefine.h
//  2.策略模式
//
//  Created by 花果山松鼠 on 2022/5/13.
//

#ifndef FTEnumDefine_h
#define FTEnumDefine_h

// 收费类型
typedef enum : NSUInteger {
    FTChargeNormalType, // 正常收费
    FTChargeRebateType, // 折扣
    FTChargeReturnType, // 满多少返利
} FTChargeMoneyType;

#endif /* FTEnumDefine_h */
