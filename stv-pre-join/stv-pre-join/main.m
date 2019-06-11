//
//  main.m
//  stv-pre-join
//
//  Created by kazto on 2019/06/08.
//  Copyright © 2019年 kazto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Account.h"

void exam_1_1_1(void) {
    BOOL bValue = true;
    NSString *strValue = @"test value";
    NSInteger iValue = 100;
    NSNumber *nValue = [[NSNumber alloc] initWithInt: 200];
    
    NSLog(@"BOOL: %d", bValue);
    NSLog(@"NSString: %s", [strValue UTF8String]);
    NSLog(@"NSInteger: %d", (int)iValue);
    NSLog(@"NSNumber: %d", [nValue intValue]);
}

void exam_1_1_2(void) {
    NSArray *array = [[NSArray alloc] initWithObjects: @"foo", @"bar", @"buz", nil];
    NSDictionary *dict = [
        [NSDictionary alloc] initWithObjectsAndKeys:
            @"val1", @"key1",
            @"val2", @"key2",
            nil];

    for(int i = 0; i < [array count]; i++) {
        NSString *v = [array objectAtIndex:i];
        NSLog(@"array[%d] = %s", i, [v UTF8String]);
    }

    NSArray *keys = [dict allKeys];
    for(int i = 0; i < [keys count]; i++) {
        NSString *k = [keys objectAtIndex: i];
        NSString *v = [dict objectForKey: k];
        NSLog(@"dict[%s] = %s", [k UTF8String], [v UTF8String]);
    }
}

void exam_1_1_3(void) {
    NSArray *array = [[NSArray alloc] initWithObjects: @"foo", @"bar", @"buz", nil];

    // if文
    for(int i = 0; i < [array count]; i++) {
        if(i == 1) {
            NSString *v = [array objectAtIndex: i];
            NSLog(@"array[1] = %s", [v UTF8String]);
        }
    }

    // if-else文
    for(int i = 0; i < [array count]; i++) {
        NSString *v = [array objectAtIndex: i];
        if(i % 2 == 0) {
            NSLog(@"even: %s", [v UTF8String]);
        }
        else {
            NSLog(@"odd:  %s", [v UTF8String]);
        }
    }

    // 三項演算子
    for(int i = 0; i < [array count]; i++) {
        NSString *v = [array objectAtIndex: i];
        NSLog(@"ternary: %s", i % 3 == 2 ? "FizzBuzz" : [v UTF8String]);
    }

    // for文
    for(int i = 0; i < [array count]; i++) {
        NSString *v = [array objectAtIndex: i];
        NSLog(@"for: %d -> %s", i, [v UTF8String]);
    }

    // 高速列挙構文
    for(NSString *v in array) {
        NSLog(@"fast: %s", [v UTF8String]);
    }

    // switch文
    for(int i = 0; i < [array count]; i++) {
        NSString *v = [array objectAtIndex: i];
        switch (i) {
            case 1:
                NSLog(@"switch: %d -> %s", i, [v UTF8String]);
                break;
            default:
                break;
        }
    }
}

void exam_1_1_4(void) {
    Account *account1 = [[Account alloc] initWithValues:@"Alice" year:17 gender:@"female" lang:@"English"];
    [account1 sayHello];
    
    Account *account2 = [[Account alloc] initWithValues:@"Bob" year:20 gender:@"male" lang:@"French"];
    [account2 sayHello];
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        exam_1_1_1();
        exam_1_1_2();
        exam_1_1_3();
        exam_1_1_4();

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
