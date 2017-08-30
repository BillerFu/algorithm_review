//
//  stack.m
//  algorithm_review
//
//  Created by Bill on 30/08/2017.
//  Copyright © 2017 Bill. All rights reserved.
//

#import "stack.h"

@interface stack()

@property (nonatomic, strong) NSMutableArray *stackArray;
@property (nonatomic, assign) NSUInteger     maxStackSize;

@end

@implementation stack

- (instancetype)init {
    
    if (self = [super init]) {
        _stackArray = [@[] mutableCopy];
    }
    return self;
}

- (instancetype)initWithSize:(NSUInteger)size {
    
    if (self = [super init]) {
        if (size > 0) {
            _stackArray     = [@[] mutableCopy];
            _maxStackSize   = size;
        }
    }
    return self;
}

- (id)popLastObject {
    
    id object = [self peek];
    [_stackArray removeLastObject];
    
    return object;
}

- (void)push:(id)object {
    
    if ([self isFull] && _maxStackSize) {
        return;
    }
    if (object != nil) {
        [_stackArray addObject:object];
    }else {
        NSAssert(object != nil, @"You can't push nil object to stack");
    }
}

- (id)peek {
    if ([_stackArray count] > 0) {
        return [_stackArray lastObject];
    }
    return nil;
}

- (NSInteger)sizeOfStack {
    return (NSInteger)[_stackArray count];
}

- (BOOL)isEmpty {
    return [_stackArray count] == 0;
}

- (BOOL)isFull {
    return ([self sizeOfStack] == (NSInteger)_maxStackSize) ? YES : NO;
}

- (void)clear {
    [_stackArray removeAllObjects];
}

- (NSArray *)allObjects {
    
    NSMutableArray *buffer = [@[] mutableCopy];
    
    for (id object in _stackArray) {
        [buffer addObject:object];
    }
    return [buffer copy];
}

@end
