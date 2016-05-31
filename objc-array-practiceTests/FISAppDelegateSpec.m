//
//  FISAppDelegateSpec.m
//  objc-array-practice
//
//  Created by Flatiron School on 5/31/16.
//  Copyright 2016 Flatiron School. All rights reserved.
//


#import "Specta.h"
#import "Expecta.h"
#define EXP_SHORTHAND
#import "FISAppDelegate.h"


SpecBegin(FISAppDelegate)

describe(@"FISAppDelegate", ^{
    
    __block FISAppDelegate *appDelegate;
    __block NSArray *teacherRoster;
    __block NSArray *rooms;
    __block NSString *substitute;
    __block NSArray *mathClass;
    __block NSString *firstStudent;
    __block NSString *secondStudent;
    __block NSString *thirdStudent;
    __block NSArray *backwardsPhrase;
    __block NSArray *schedule;
    __block NSString *teacherGreeting;
    __block NSArray *updatedRoster;
    
    beforeAll(^{

    });
    
    beforeEach(^{
        
        appDelegate = [[FISAppDelegate alloc]init];
        
        teacherGreeting = @"Welcome Ms. Leahey, your classroom is 4.\nWelcome Principle Peskin, your classroom is 8.\nWelcome Mrs. Jacobs, your classroom is 15.\nWelcome Mr. Peterson, your classroom is 16.\nWelcome Mr. Smith, your classroom is 23.\nWelcome Mr. Hurley, your classroom is 42.";
        
        teacherRoster = @[@"Ms. Leahey",
                          @"Principle Peskin",
                          @"Mrs. Jacobs",
                          @"Mr. Peterson",
                          @"Mr. Smith",
                          @"Mr. Hurley"];
        
        updatedRoster = @[@"Ms. Leahey",
                          @"Principle Peskin",
                          @"Mr. Loftus",
                          @"Mr. Peterson",
                          @"Mr. Smith",
                          @"Mr. Hurley"];
        
        firstStudent = @"Jen Linley";
        secondStudent = @"Joey Potter";
        thirdStudent = @"Dawson Leary";
        
        
        rooms = @[@4, @8, @15, @16, @23, @42];
        
        mathClass = @[@"Joey Potter",
                      @"Jen Linley",
                      @"Dawson Leary",
                      @"Pacey Witter",
                      @"Jen Linley",
                      @"Jack McPhee",
                      @"Dawson Leary",
                      @"Eve Whitman",
                      @"Madison Blacker",
                      @"Eve Whitman",
                      @"Dawson Leary",
                      @"Andie McPhee",
                      @"Audrey Lidell", ];
        
        substitute = @"Mr. Loftus";
        
        backwardsPhrase = @[@"wildcats!",
                            @"the",
                            @"Not",
                            @"Minutemen!",
                            @"Go"];
        
        schedule = @[@"Joey",
                     @"Bodie",
                     @"Joey",
                     @"Bess",
                     @"Bodie",
                     @"Joey"];
        
        
    });
    
    describe(@"assigningTeacher:toRooms:", ^{
        it(@"should return formatted room assignments", ^{
            expect([appDelegate assigningTeacher:teacherRoster toRooms:rooms]).to.equal(teacherGreeting);
        });
    });
    
    describe(@"replacingTeacher:withTeacher:", ^{
        it(@"should return an array with replaced teacher", ^{
            expect([appDelegate replacingTeacher:teacherRoster withteacher:substitute]).to.equal(updatedRoster);
        });
    });
    
    describe(@"duplicateStudent:student:", ^{
        it(@"should return the count of student occurances", ^{
            
            expect([appDelegate duplicateStudent:mathClass student:firstStudent]).to.equal(2);
        });
    });
    
    describe(@"duplicateStudent:student:", ^{
        it(@"should return the count of student occurances", ^{
            expect([appDelegate duplicateStudent:mathClass student:secondStudent]).to.equal(1);
        });
    });
    
    describe(@"duplicateStudent:student:", ^{
        it(@"should return the count of student occurances", ^{
            expect([appDelegate duplicateStudent:mathClass student:thirdStudent]).to.equal(3);
        });
    });
    
    describe(@"signForPrinter:", ^{
        it(@"should return a formatted string", ^{
            expect([appDelegate signForPrinter:backwardsPhrase]).to.equal(@"Go Minutemen! Not the wildcats! ");
        });
    });

    describe(@"removeOpeningAndClosingShifts:", ^{
        it(@"should return array with first and last objects removed", ^{
            expect([appDelegate removeOpeningAndClosingShifts:schedule]).to.equal(@[@"Bodie", @"Joey", @"Bess", @"Bodie"]);
        });
    });
    
});

SpecEnd
