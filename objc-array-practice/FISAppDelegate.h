//
//  AppDelegate.h
//  objc-array-practice
//
//  Created by Flatiron School on 5/31/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

-(NSString *)assigningTeacher:(NSArray*)teacherRoster toRooms:(NSArray*)rooms;

-(NSArray*)replacingTeacher:(NSArray*)teacherRoster withteacher:(NSString*)substitute;

-(NSUInteger)duplicateStudent:(NSArray*)mathClass student:(NSString *)student;

-(NSString*)signForPrinter:(NSArray*)backwardsPhrase;

-(NSArray*)removeOpeningAndClosingShifts:(NSArray*)schedule;

@end

