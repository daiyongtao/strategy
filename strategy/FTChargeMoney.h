//
//  FTChargeMoney.h
//  2.策略模式
//
//  Created by 花果山松鼠 on 2022/5/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 收费基类
@interface FTChargeMoney : NSObject

/// 收费（默认为正常收费）
/// @param money 原价
/// @return 真实应该收取的费用（当前价）
- (double)chargeMoney:(double)money;

@end

NS_ASSUME_NONNULL_END
