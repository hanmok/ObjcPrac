//
//  main.m
//  ObjcPrac
//
//  Created by 핏투비 on 2022/06/30.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Animal.h"
#import "Koala.h"
#import "Animal+Exam.h"
#import "Dog.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        NSLog(@"Hello, World!");
        
        NSString *nothing = nil;
        
        NSLog(@"Location of nil: %p, ", nothing);
        
        
        NSString *quote = @"Dogs has masters, while cats have staff";
        
        NSLog(@"Size of String: %d", (int)[quote length]);
        
        NSLog(@"Character at 5: %c", [quote characterAtIndex:5]);
        
        char *name = "Derek";
        NSString *myName = [NSString stringWithFormat: @"- %s", name]; // dynamic
        
        BOOL isStringEqual = [quote isEqualToString: myName];
        
        const char *uCString = [[myName uppercaseString]UTF8String];
        
        NSLog(@"my NewName: %s", uCString);
        
        NSString *wholeQuote = [quote stringByAppendingString:myName];
        
        NSRange searchResult = [wholeQuote rangeOfString:@"Derek"];
        
        if (searchResult.location == NSNotFound) {
            NSLog(@"String not found");
        } else {
            printf("Derek is at index %lu and is  %u long \n", searchResult, searchResult.length);
        }
        
        NSRange range = NSMakeRange(42, 5);

        const char *newQuote = [[wholeQuote stringByReplacingCharactersInRange:range withString:@"Anon"]UTF8String];

        NSMutableString *groceryList = [NSMutableString stringWithCapacity:50];
        
        [groceryList appendFormat:@"%s", "Potato, Banana, Pasta"];
        
        NSLog(@"groceryList: %@", groceryList);
        
        [groceryList deleteCharactersInRange:NSMakeRange(0, 8)];
        
        NSLog(@"groceryList : %@", groceryList);
        
        [groceryList insertString:@", Apple" atIndex:13];
        
        NSLog(@"groceryList : %@", groceryList);
        
        [groceryList replaceCharactersInRange:NSMakeRange(15, 5) withString:@"Orange"];

        NSLog(@"groceryList : %@", groceryList);
        
        
        
        
        NSArray *officeSupplies = @[@"Pencils", @"Paper"];
        
        NSLog(@"First : %@", officeSupplies[0]);
        NSLog(@"Office Supplies: %@", officeSupplies);
        
        BOOL containsItem = [officeSupplies containsObject:@"Pencils"];
        NSLog(@"Need Pencils: %d", containsItem);
        NSLog(@"Total : %d", (int)[officeSupplies count]);
        NSLog(@"Index of Pencils is at %lu", (unsigned long)[officeSupplies indexOfObject:@"Pencils"]);
        
        NSMutableArray *heroes = [NSMutableArray arrayWithCapacity:5];
        [heroes addObject:@"Batman"];
        [heroes addObject:@"Flash"];
        [heroes addObject:@"Wonder Woman"];
        [heroes addObject:@"Kid Flash"];
        
        [heroes insertObject:@"Superman" atIndex:2];
        
        NSLog(@"%@", heroes);
        
        [heroes removeObject: @"Flash"];
        
        [heroes removeObjectAtIndex:0];
        [heroes removeObjectIdenticalTo:@"Superman" inRange:NSMakeRange(0, 1)];
        
        for (int i = 0; i < [heroes count]; i++) {
            NSLog(@"%@", heroes[i]);
        }
        
        
        Animal *dog = [[Animal alloc] init];
        
        [dog getInfo];
        
        NSLog(@"Tehe dogs name is %@", [dog name]);
        
        [dog setName:@"Spot"];
        
        NSLog(@"The dogs name is %@", [dog name]);
        
        Animal *cat = [[Animal alloc] initWithName:@"Whiskers"];
        
        NSLog(@"The cats name is %@", cat.name);
        
        NSLog(@"180 lbs = %.2f kg", [dog weightInKg:180]);
        
        NSLog(@"3 + 5 = %d", [dog getSum:3 nextNumber:5]);
        
        NSLog(@"%@", [dog talkToMe:@"Derek"]);
        
        
        
        Koala *herbie = [[Koala alloc]initWithName:@"Herbie"];
        NSLog(@"%@", [herbie talkToMe:@"Derek"]);
        
        
//        NSLog(@"Did %@ receive shots : %d", herbie.name, [herbie checkedByVet]);
        
        NSLog(@"Did %@ receive shots: %@", [herbie name], [herbie checkedByVet]);
        
        [herbie getShots];
        
        [dog getInfo];
        
        [herbie lookCute];
        
        
        float (^getArea) (float height, float width);
        
        getArea = ^float(float width, float height) {
            return width * height;
        };
        
        NSLog(@"Area of 3 width and 50 height: %.1f", getArea(3,50));
        
        
        enum Ratings {
            Poor = 1, Ok = 2, great = 5
        };
        
        enum Ratings matrixRating = great;
        
        NSLog(@"Matrix %u", matrixRating);
        
        Dog *grover = [[Dog alloc]initWithName:@"Grover"];
        
        NSArray *animals = [[NSArray alloc]initWithObjects:herbie, grover, nil];
        
        id object1 = [animals objectAtIndex:0];
        id object2 = [animals objectAtIndex:1];
        
        [object1 makeSound];
        [object2 makeSound];
    }
    
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
 
