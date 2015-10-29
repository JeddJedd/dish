//
//  CommentsViewController.m
//  Dish
//
//  Created by Jedd Goble on 10/28/15.
//  Copyright © 2015 Mobile Makers. All rights reserved.
//

#import "CommentsViewController.h"
#import "Photo.h"

@interface CommentsViewController () <UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CommentsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.estimatedRowHeight = 60.0;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CommentCellID"];
    
    
    
    return cell;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.comments.count;
}


- (IBAction)onBackButtonPressed:(UIButton *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}



@end
