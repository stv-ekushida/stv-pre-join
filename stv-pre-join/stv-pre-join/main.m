//
//  main.m
//  stv-pre-join
//
//  Created by kazto on 2019/06/08.
//  Copyright © 2019年 kazto. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

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

int main(int argc, char * argv[]) {
    @autoreleasepool {
        exam_1_1_1();
        exam_1_1_2();

        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
