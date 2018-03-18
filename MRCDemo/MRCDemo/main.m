//
//  main.m
//  MRCDemo
//
//  Created by WRQ on 2018/3/18.
//  Copyright © 2018年 WRQ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Cat.h"
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc] init];
        Dog *d = [[[Dog alloc] init] autorelease];
        p.dog = d;
        Cat *c = [[[Cat alloc] init] autorelease];
        p.cat = c;
        Person *p1 = [Person personWithAge:10];
        
        
        [p release];
    }
    return 0;
}
