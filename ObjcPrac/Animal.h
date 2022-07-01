//
//  Animal.h
//  ObjcPrac
//
//  Created by 핏투비 on 2022/06/30.
//
// header file
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property NSString *name; // readonly -> could not be set directly
@property NSString *favFood;
@property NSString *sound;

@property float weight;

// return instancetype
-(instancetype) initWithName: (NSString*) defaultName;
// create methods. + -> class Method (not accesssible for instance )
// not gonna return anything
-(void) getInfo;
// return,           get float, named weightInLbs
-(float) weightInKg: (float) weightInLbs;

-(NSString *) talkToMe: (NSString *) myName;

-(int) getSum: (int) num1
   nextNumber: (int) num2;

-(void) makeSound;

@end

NS_ASSUME_NONNULL_END

// primitive -> does not need `*` (pointer)
