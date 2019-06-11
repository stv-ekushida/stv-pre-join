//
//  Account.m
//  stv-pre-join
//
//  Created by kazto on 2019/06/11.
//  Copyright © 2019年 kazto. All rights reserved.
//

#import "Account.h"

@implementation Account

-(Account *)initWithValues:(NSString *)name year:(int)year gender:(NSString *)gender lang:(NSString *)lang {
    self.m_name = name;
    self.m_year = year;
    self.m_gender = gender;
    self.m_language = lang;
    return self;
}

-(void)sayHello {
    if([self.m_gender isEqualToString: @"male"]) {
        NSLog(@"%s君は、%sが得意な%d歳です。",
            [self.m_name UTF8String],
            [self.m_language UTF8String],
            self.m_year
        );
    }
}
@end
