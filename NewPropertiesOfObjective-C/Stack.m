//
//  Stack.m
//  NewPropertiesOfObjective-C
//
//  Created by FrankLiu on 16/2/15.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "Stack.h"

@interface Stack<ObjectType> ()

@property (nonatomic, strong) NSMutableArray<ObjectType> *m_myObjects;
@property (nonatomic, strong) NSArray<       ObjectType> *m_allObjects;

- (void)pushObject: (id)object;
- (id)popObhect;

@end

@implementation Stack

- (instancetype)init {

    if (self = [super init]) {
        
        self.m_allObjects = [NSMutableArray array];
        self.m_myObjects  = [NSMutableArray array];
    }
    
    return self;
}

- (void)pushObject: (id)object {

    [self.m_myObjects addObject:object];
    self.m_allObjects = self.m_myObjects;
}

- (id)popObhect {

    id object = [self.m_myObjects lastObject];
    
    [self.m_myObjects removeLastObject];
    self.m_allObjects = self.m_myObjects;
    
    return object;
}

@end
