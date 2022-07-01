//
//  Animal+Exam.m
//  ObjcPrac
//
//  Created by 핏투비 on 2022/06/30.
//

#import "Animal+Exam.h"

@implementation Animal (Exam)

-(BOOL) checkedByVet {
    return 1;
}

- (void) getShots {
    NSLog(@"%@ got its shots", self.name);
}

@end
