//
//  stack.h
//  algorithm_review
//
//  Created by Bill on 30/08/2017.
//  Copyright © 2017 Bill. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface stack : NSObject

- (instancetype)initWithSize:(NSUInteger)size;

- (id)popLastObject;
- (void)push:(id)object;
- (id)peek;
- (NSInteger)sizeOfStack;
- (BOOL)isEmpty;
- (BOOL)isFull;
- (void)clear;
- (NSArray *)allObjects;

@end
