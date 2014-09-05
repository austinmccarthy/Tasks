//
//  ViewController.h
//  Tasks
//
//  Created by Austin McCarthy on 8/14/14.
//  Copyright (c) 2014 Austin McCarthy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddTaskViewController.h"
#import "DetailTaskViewController.h"

@interface ViewController : UIViewController <AddTaskViewControllerDelegate, UITableViewDataSource, UITableViewDelegate, DetailTaskViewControllerDelegate>

@property (strong, nonatomic) Task *selectedTask;
@property (strong, nonatomic) NSMutableArray *taskObjects;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem* editDoneButton;


- (IBAction)editBarButton:(UIBarButtonItem *)sender;
- (IBAction)addBarButton:(UIBarButtonItem *)sender;

@end
