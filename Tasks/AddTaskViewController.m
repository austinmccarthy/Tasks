//
//  AddTaskViewController.m
//  Tasks
//
//  Created by Austin McCarthy on 8/14/14.
//  Copyright (c) 2014 Austin McCarthy. All rights reserved.
//

#import "AddTaskViewController.h"

@interface AddTaskViewController ()

@end

@implementation AddTaskViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.datePicker addTarget:self action:@selector(datePickerTapped:) forControlEvents: UIControlEventAllEvents];
//    UIGestureRecognizer *recognizerImage = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImage:)];    [self.datePicker addGestureRecognizer:recognizerImage
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)datePickerTapped:(id)sender
{
    NSLog(@"Picker Tapped");
    [self.view endEditing:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(Task *)fillInTaskObject:(Task *)taskObject
{
    taskObject.name = self.textField.text;
    taskObject.description = self.textView.text;
    taskObject.date = self.datePicker.date;
    taskObject.isCompleted = NO;
    
    return taskObject;
}

- (Task *)returnNewTaskObject
{
    Task *taskObject = [[Task alloc] init];
    [self fillInTaskObject:taskObject];
    
    return taskObject;
}

- (IBAction)addTaskButton:(UIButton *)sender
{
    [self.delegate didAddTask:[self returnNewTaskObject]];
    
}

- (IBAction)cancelButton:(UIButton *)sender
{
    [self.delegate didCancel];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.textField endEditing:YES];
    [self.textView endEditing:YES];

}

@end
