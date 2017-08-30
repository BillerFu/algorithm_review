//
//  main.m
//  algorithm_review
//
//  Created by Bill on 30/08/2017.
//  Copyright © 2017 Bill. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "algorithmHeader.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        stack *testStack = [[stack alloc] initWithSize:10];
        
        [testStack push:@12];
        [testStack push:@34];
        [testStack push:@23];
        
        id lastObject = [testStack popLastObject];
        NSLog(@"last object from stack is %@",lastObject);
        
    }
    return 0;
}
