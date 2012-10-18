//
//  MMAMasterViewController.m
//  mdf2p4StoryBoardVer
//
//  Created by S. Meisha Ray on 10/18/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import "MMAMasterViewController.h"
#import "MMADetailViewController.h"

@interface MMAMasterViewController () {
    NSMutableArray *_objects;
}
@end

@implementation MMAMasterViewController
{
    NSDictionary *dict;
    NSArray *movieTitle;
    NSArray *movieTimes;
    NSArray *movieImage;
    NSArray *movieTrailer;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Root" ofType:@"plist"];
    dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    
    movieTitle = [dict objectForKey:@"MovieName"];
    movieTimes = [dict objectForKey:@"MovieTimes"];
    movieImage = [dict objectForKey:@"MovieImage"];
    movieTrailer = [dict objectForKey:@"MovieTrailer"];
                      
//    self.navigationItem.leftBarButtonItem = self.editButtonItem;
//
//    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject:)];
//    self.navigationItem.rightBarButtonItem = addButton;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertNewObject:(id)sender
{
    if (!_objects) {
        _objects = [[NSMutableArray alloc] init];
    }
    [_objects insertObject:[NSDate date] atIndex:0];
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    cell.contentView.backgroundColor = [UIColor blackColor];
    UIImage *image = [UIImage imageNamed:@"headerImage.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    cell.accessoryView = imageView;
    cell.textLabel.text = [movieTitle objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [movieTimes objectAtIndex:indexPath.row];
    
    return cell;
}
-(CGFloat)tableView:(UITableView*)tableView heightForHeaderInSection:(NSInteger)section
{
    return 60.0;
}

-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    static NSString *CellIdendifier = @"SectionHeader";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdendifier];
    UILabel *label1 = (UILabel*)[cell viewWithTag:1];
    UILabel *label2 = (UILabel*)[cell viewWithTag:2];
    
    if (section == 0)
    {
        [label1 setText:@"Cinema 502"];
        [label2 setText:@"Salem, VA"];
    }
    else if (section == 1)
    {
        [label1 setText:@"Lake Cinema"];
        [label2 setText:@"Hardy, VA"];
    }
    else if (section == 2)
    {
        [label1 setText:@"Roanoke Plaza"];
        [label2 setText:@"Roanoke, VA"];
    }
    return (UIView*) cell;
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [_objects removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    if ([[segue identifier] isEqualToString:@"showDetail"])
    {
        MMADetailViewController *destController = segue.destinationViewController;
        destController.movieTitle = [movieTitle objectAtIndex:indexPath.row];
        destController.movieTimes = [movieTimes objectAtIndex:indexPath.row];
        //destController.movieTrailer = [movieTrailer objectAtIndex:indexPath.row];
        destController.movieImage = [movieImage objectAtIndex:indexPath.row];
        
//        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        NSDate *object = _objects[indexPath.row];
//        [[segue destinationViewController] setDetailItem:object];
    }
}

@end
