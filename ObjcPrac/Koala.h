//
//  Koala.h
//  ObjcPrac
//
//  Created by 핏투비 on 2022/06/30.
//

#import "Animal.h"
#import "BeautyContest.h"

NS_ASSUME_NONNULL_BEGIN

@interface Koala : Animal <BeautyContest>

-(NSString *) talkToMe:(NSString *)myName;

-(void) performTrick;
-(void) makeSound;
-(void) lookCute;

@end

NS_ASSUME_NONNULL_END
