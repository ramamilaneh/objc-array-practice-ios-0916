//
//  AppDelegate.m
//  objc-array-practice
//
//  Created by Flatiron School on 5/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "FISAppDelegate.h"

@interface FISAppDelegate ()

@end

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // Override point for customization after application launch.
    
    return YES;
}
-(NSString *)assigningTeacher:(NSArray*)teacherRoster toRooms:(NSArray*)rooms {
    NSString *assignments = @"";
    for (NSUInteger i = 0; i < teacherRoster.count; i++) {
        NSString *room = rooms[i];
        if ([teacherRoster[i] isEqualToString:teacherRoster.lastObject]) {
            assignments = [assignments stringByAppendingFormat:@"Welcome %@, your classroom is %@.", teacherRoster[i], room];
        }else{
            assignments = [assignments stringByAppendingFormat:@"Welcome %@, your classroom is %@.\n", teacherRoster[i], room];
        }
    }
    NSLog(@"%@", assignments);
    return assignments;

}

-(NSArray*)replacingTeacher:(NSArray*)teacherRoster withTeacher:(NSString*)substitute {
    NSMutableArray *newRoster = [teacherRoster mutableCopy];
    for (NSUInteger i = 0; i < teacherRoster.count; i++) {
        if([teacherRoster[i] isEqualToString:@"Mrs. Jacobs"]) {
            newRoster[i] = substitute;
        }
    }
    return newRoster;
}

-(NSUInteger)duplicateStudents:(NSArray*)mathClass student:(NSString *)student {
    NSUInteger count = 0;
    for (NSUInteger i = 0; i<[mathClass count]; i++) {
        if ([mathClass[i] isEqualToString:student]) {
            count += 1;
        }
    }
    return count;
}

-(NSString*)signForPrinter:(NSArray*)backwardsPhrase {
    NSMutableString *phrase = [NSMutableString string];
    for (NSInteger i = [backwardsPhrase count] - 1; i >= 0; i--) {
        [phrase appendFormat:@"%@ ",backwardsPhrase[i]];
    }
    return phrase;
}

-(NSArray*)removeOpeningAndClosingShifts:(NSArray*)schedule {
    NSMutableArray *newSchedule = [schedule mutableCopy];
    [newSchedule removeObjectAtIndex:0];
    [newSchedule removeLastObject];
    return newSchedule;
}
@end
