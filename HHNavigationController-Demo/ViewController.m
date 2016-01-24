//
//  ViewController.m
//  HHNavigationController
//
//  Created by buaacss on 16/1/24.
//  Copyright © 2016年 huihui. All rights reserved.
//

#import "ViewController.h"
#import "HHSecondViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *list;

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.navigationItem.title = @"firstVC";
    [self.view addSubview:self.list];
}

- (UITableView *)list
{
    if (!_list) {
        _list = [[UITableView alloc] initWithFrame:UIScreen.mainScreen.bounds style:UITableViewStyleGrouped];
        _list.delegate = self;
        _list.dataSource = self;
    }
    return _list;
}

#pragma mark - UITableview Delegate & DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100.f;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@""];
    cell.backgroundColor = [UIColor colorWithRed:(arc4random() % 255)/255.f green:(arc4random() % 255)/255.f blue:(arc4random() % 255)/255.f alpha:1.0];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    HHSecondViewController *vc = [[HHSecondViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end