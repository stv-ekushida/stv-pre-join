//
//  Account.h
//  stv-pre-join
//
//  Created by kazto on 2019/06/11.
//  Copyright © 2019年 kazto. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Account : NSObject
@property NSString *m_name;
@property int m_year;
@property NSString *m_gender;
@property NSString *m_language;

- (Account *)initWithValues: (NSString *)name year:(int)year gender:(NSString *)gender lang:(NSString *)lang;
- (void)sayHello;
@end

NS_ASSUME_NONNULL_END
