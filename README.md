##Array

![](https://cloud.githubusercontent.com/assets/15805090/15586111/aaf241c0-2350-11e6-8470-b5de54a0c386.jpg)

Listen to this [song](https://youtu.be/8iagmMy7JEE) to get amped for Capeside high.

As administrator of the high school you have the ability to make changes to your records regarding staff and the students attending the high school. In an attempt to get organized and clean up some records you've decided to make the following changes: 

Start by declaring the following methods in the `FISAppDelegate.h`:

* `assigningTeacher:toRooms:` that takes in two `NSArray` arguments, `teacherRoster` and `rooms` and returns a `NSString`.
* `replacingTeacher:withTeacher:` that takes two arguments, one `NSArray` argument named `teacherRoster` and one `string` argument named `substitute` and returns an `NSArray`.
* `duplicateStudents:student:` takes one `NSArray` argument `mathClass` and a `NSString` argument named `student` and returns an `NSUInteger`. 
* `signForPrinter:` takes one `NSArray` argument named `backwardsPhrase` and returns a `NSString`.
* `removeOpeningAndClosingShifts:` takes one `NSArray` argument named `schedule` and returns and `NSArray`.

**1.** It's the first day of school at Capeside High! Get your teachers assigned their classrooms.

`assigningTeacher:toRooms:` should return a string with the teachers name and room assignment in this format `"Welcome <#teacher's name>, your classroom is <#room>. ` each on a new line. 

**2.** Oh no! Mrs. Jacobs has called out sick. We need an updated teacher roster.

`replacingTeacher:withTeacher:` should return a `NSArray` with the new list of teachers. 

**3.** While clearing out your records you noticed that Principle Peskin has added duplicate student names to a math class.

`duplicateStudents:` should return a `NSUInteger` count of times a sudent's name appears.

**4.** Homecoming is finally here and your schools mascot, Pacey Witter needs his sign corrected. 

`signForPrinter:` should return a string with the correct phrase. Somehow it was reversed and you need to set it right. 

**5.** Your star student Joey has been taking too many shifts down at the Ice House Restaurant and it's effecting her shcool work. Help her fix the schedule by removing her opening and closing shifts from the scheudle. 

`removeOpeningAndClosingShifts:schedule` should return the updated schedule array that removes Joey's name from the first and last position. 








