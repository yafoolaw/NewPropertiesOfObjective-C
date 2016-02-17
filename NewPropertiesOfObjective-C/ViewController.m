//
//  ViewController.m
//  NewPropertiesOfObjective-C
//
//  Created by FrankLiu on 16/2/15.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import "ViewController.h"

#import "Model.h"
#import "Stack.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    /** ----------------------*
      *  自定义泛型容器,模拟栈操作
      * ----------------------**/
    
    Stack<NSString*> *stringStack = [Stack new];
    [stringStack pushObject:@"YouXianMing"];
    
    NSLog(@"%@",stringStack.m_allObjects);
    
    [stringStack pushObject:@"LiuDaShuai"];
    NSLog(@"%@",stringStack.m_allObjects);
    
    NSLog(@"%@",[stringStack popObhect]);
    NSLog(@"%@",stringStack.m_allObjects);
    
    /** ------------*
      *  协变性和逆变性
      * ------------**/
    
    // 协变性
    Stack                   *stack;
    Stack<NSString*>        *strStack;
    Stack<NSMutableString*> *mutableStrStack;
    
    stack           = strStack;
    stack           = mutableStrStack;
    strStack        = stack;
    mutableStrStack = stack;

    strStack        = mutableStrStack;
    mutableStrStack = strStack;
    
    
}



@end
