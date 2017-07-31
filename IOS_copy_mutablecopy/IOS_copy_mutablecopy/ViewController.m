//
//  ViewController.m
//  IOS_copy_mutablecopy
//
//  Created by 方冬冬 on 2017/7/31.
//  Copyright © 2017年 方冬冬. All rights reserved.
//。 http://www.cocoachina.com/ios/20160803/17275.html



#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self verifyDictionary];
    
//    [self verifyString];
//    [self verifyArr];
    
    [self verifyString];
}

- (void)verifyString{

    NSString *string = @"FDD";
    
    NSString *copyStr =  [string copy];
    
    NSString *mutableStr = [string mutableCopy];
    
    NSLog(@"%@--string=%p  %@--copyStr=%p, %@--copyStr=%p",[string class],string,[copyStr class],copyStr,[mutableStr class],mutableStr);
    
    //结论。字符串拷贝(copy)。只是地址拷贝。 浅拷贝    字符串（mutableCopy）拷贝是深拷贝，产生了新对象，是深拷贝，产生的新对象是可变对象
    
    NSMutableString *newString = [NSMutableString stringWithFormat:@"哈哈哈"];
    
//     id onew = [newString copy];
    
    id oneTwo =  [newString mutableCopy];
    
//    [[newString mutableCopy] insertString:@"1" atIndex:1];
    
    NSLog(@"%@--newString=%p  %@--[newString copy]=%p, %@--[newString mutableCopy]=%p",[newString class],newString,[[newString copy] class],[newString copy],[oneTwo class],oneTwo);
    
    
    
    
    
}

- (void)verifyArr{

    NSArray *arr = @[@"1",@"2",@"3"];
    
    NSArray *copyArr = [arr copy];
    
    NSArray *mutableArr = [arr mutableCopy];
    
    NSLog(@"%@--arr=%p  %@--copyArr=%p, %@--mutableArr=%p",[arr class],arr,[copyArr class],copyArr,[mutableArr class],[arr mutableCopy]);
    //结论  数组拷贝（copy）只是地址拷贝不产生新对象。  数组（mutableCopy）拷贝是深拷贝，产生了新对象，是深拷贝，产生的新对象是可变对象
    
    
    NSMutableArray *newArr = [NSMutableArray arrayWithObjects:@"1",@"2",nil];
    
    [newArr copy];
    
    [newArr mutableCopy];
    
     //结论  可变数组拷贝（copy）产生新对象 产生不可不类型nsarray。  数组（mutableCopy）拷贝是深拷贝，产生了新对象，是深拷贝，产生的新对象是可变对象
    NSLog(@"%@--newArr=%p  %@--copyArr=%p, %@--mutableArr=%p",[newArr class],newArr,[[newArr copy] class],[newArr copy],[[newArr mutableCopy] class],[newArr mutableCopy]);

    
}


- (void)verifyDictionary{
    
    NSDictionary *dictionary = @{@"title":@"标题",@"name":@"好的"};
    
    NSDictionary *dictionaryCopy = [dictionary copy];
    
    NSDictionary *mutableDic = [dictionary mutableCopy];
    
    NSLog(@"%@--dictionary=%p  %@--dictionaryCopy=%p, %@--mutableDic=%p",[dictionary class],dictionary,[dictionaryCopy class],dictionaryCopy,[mutableDic class],[mutableDic mutableCopy]);
    
    //结论  NSDictionary拷贝（copy）只是地址拷贝不产生新对象。 NSDictionary（mutableCopy）拷贝是深拷贝，产生了新对象，是深拷贝，产生的新对象是可变对象
    
    
}
@end
