//
//  AddTaskViewController.h
//  Tasks
//
//  Created by Austin McCarthy on 8/14/14.
//  Copyright (c) 2014 Austin McCarthy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"
//#import "ViewController.h"

@protocol AddTaskViewControllerDelegate <NSObject>

-(void)didCancel;
-(void)didAddTask:(Task *)task;

/* HOMEWORK for 08/21/2014: Add ability to edit a task when viewing task on */
//-(void)didEditTask:(Task *)task;

@end

@interface AddTaskViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) id <AddTaskViewControllerDelegate>delegate;

@property (strong, nonatomic) IBOutlet UITextField *textField;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
//@property (nonatomic, strong) Task *task;

- (IBAction)cancelButton:(UIButton *)sender;
- (IBAction)addTaskButton:(UIButton *)sender;

@end
