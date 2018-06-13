//
//  AppDelegate.m
//  NSStringTest
//
//  Created by Admin on 07.06.2018.
//  Copyright © 2018 SergioLechini. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor lightGrayColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];

//    NSString* str1 = @"String1";
//    NSString* str2 = @"String2";
//
//    NSArray* array = [NSArray arrayWithObjects:str1, str2, nil];
//
//    for (NSString* str in array) {
//
//        if ([str isEqualToString:@"String1"]) {
//            NSLog(@"Yes");
//        }
//
//    }
//
//    NSRange range = [str1 rangeOfString:@"iNg"];
//
//    if (range.location != NSNotFound) {
//        NSLog(@"%@", NSStringFromRange(range));
//    } else {
//        NSLog(@"not found");
//    }
//
//    //поиск без регистра
//    NSRange range2 = [str1 rangeOfString:@"iNg" options:NSCaseInsensitiveSearch | NSBackwardsSearch];
//
//    if (range2.location != NSNotFound) {
//        NSLog(@"%@", NSStringFromRange(range2));
//    } else {
//        NSLog(@"not found");
//    }
    
    NSString* text = @"sdfsdf sdfsd sdfsdfsd opop sdf sdf sdf 123 sdf s123df sdf 123sdf sdf sdf23 ewf sdf sdf sdf";
    
    //text = [];
    
    //text = [text substringWithRange:NSMakeRange(15, 25)];
    
//    NSRange range = [text rangeOfString:@"opop"];
//
//    if (range.location != NSNotFound) {
//        text = [text substringToIndex:range.location];
//    }
    
    NSArray* strArr = [text componentsSeparatedByString:@" "];
    
    NSInteger countSdf = 0;
    for (NSString* str in strArr) {
        
        NSString* strWithoutSpaces = [str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if ([strWithoutSpaces isEqualToString:@"sdf"]) {
            countSdf++;
        }
        
    }

    NSLog(@"count sdf: %d", countSdf);
    
    //NSLog(@"%@", text);
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
