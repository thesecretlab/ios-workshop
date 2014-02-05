//
//  CustomClass.h
//  CustomCocoa
//
//  Created by Tim Nugent on 28/01/2014.
//  Copyright (c) 2014 Tim Nugent. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomClass : NSObject

@property (getter = isActive) BOOL active;

- (void)doSomeStuff;
- (void)doSomeOtherStuff:(NSString *)input;

@end
