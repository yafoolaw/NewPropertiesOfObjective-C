//
//  ViewController.h
//  NewPropertiesOfObjective-C
//
//  Created by FrankLiu on 16/2/15.
//  Copyright © 2016年 FrankLiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Model;

@interface ViewController : UIViewController

@property (nonatomic, strong, nonnull         ) Model    *m_model;
@property (nonatomic, copy, readonly, nullable) NSArray  *m_friendArray;

//+ (nullable NSString*)friendWithName: (nonnull NSString*)name;

@end

