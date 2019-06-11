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


int main(int argc, char * argv[]) {
    @autoreleasepool {
        exam_1_1_1();
        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
