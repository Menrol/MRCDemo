//
//  Person.m
//  MRCDemo
//
//  Created by WRQ on 2018/3/18.
//  Copyright © 2018年 WRQ. All rights reserved.
//

#import "Person.h"
#import "Dog.h"
#import "Cat.h"

@implementation Person

- (instancetype)initWithAge:(int)age {
    self = [super init];
    if (self) {
        self.age = age;
    }
    
    return self;
}

+ (instancetype)personWithAge:(int)age {
    return [[[self alloc] initWithAge:age] autorelease];
}

- (void)setDog:(Dog *)dog {
    if (_dog != dog) {
        [_dog release];
        _dog = [dog retain];
    }
}

- (Dog *)dog {
    return _dog;
}

- (void)dealloc {
    self.dog = nil;
    [_cat release];
    
    NSLog(@"Person------dealloc");
    [super dealloc];
}
@end
