//
//  Person.h
//  MRCDemo
//
//  Created by WRQ on 2018/3/18.
//  Copyright © 2018年 WRQ. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Dog;
@class Cat;

@interface Person : NSObject{
    Dog *_dog;
}

@property (nonatomic, retain) Cat *cat;
@property(nonatomic, assign) int age;

- (void)setDog:(Dog *)dog;
- (Dog *)dog;

+ (instancetype)personWithAge:(int)age;

@end
