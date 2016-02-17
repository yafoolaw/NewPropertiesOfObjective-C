//
//  Stack.h
//  NewPropertiesOfObjective-C
//
//  Created by FrankLiu on 16/2/15.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack<ObjectType> : NSObject

- (void)pushObject: (ObjectType)object;
- (ObjectType)popObhect;

@property (nonatomic, readonly) NSArray<ObjectType> *m_allObjects;

@end
