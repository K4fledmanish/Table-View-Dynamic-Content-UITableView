//
//  main.m
//  Table-View-Dynamic-Content-UITableView
//
//  Created by K4fle D. Manish on 14/9/20.
//  Copyright © 2020 K4fledmanish. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
