//
//  MMAViewController.m
//  MovieTrailerP4
//
//  Created by S. Meisha Ray on 10/15/12.
//  Copyright (c) 2012 Mad Monkey Applications. All rights reserved.
//

#import "MMAViewController.h"
#import "CustomMovieCell.h"
#import "DetailViewController.h"

@interface MMAViewController ()

@end

@implementation MMAViewController
{
   
    NSArray *thumbs;
    NSArray *showTimes;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //::::LIST OF MOVIES:::::
//    movieList = [[NSMutableArray alloc] init];
//    [movieList addObject:@"The Lorax"];
//    [movieList addObject:@"G.I. Joe"];
//    [movieList addObject:@"Safe House"];
//    [movieList addObject:@"Battle Ship"];
//    [movieList addObject:@"Finding Nemo 3D"];
//    [movieList addObject:@"Wanderlust"];
//    
//    
//    self.navigationItem.title = @"Movie List";
    
    movieList = [NSArray arrayWithObjects:
                 @"The Lorax",
                 @"G.I. Joe",
                 @"Safe",
                 @"Battle Ship",
                 @"Finding Nemo 3D",
                 @"Wanderlust",
                 nil];

    thumbs = [NSArray arrayWithObjects:
              @"theLorax.jpg",
              @"giJoe.jpg",
              @"safe.jpg",
              @"battleShip.jpg",
              @"nemo.jpg",
              @"wanderlust.jpg",
              nil];
    
    showTimes = [NSArray arrayWithObjects:
                 @"2:40pm, 5:40pm, 7:40pm",
                 @"2:40pm, 5:40pm, 7:40pm",
                 @"2:40pm, 5:40pm, 6:00pm",
                 @"2:40pm, 5:40pm, 7:40pm",
                 @"1:30pm, 6:40pm, 9:40pm",
                 nil];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}
//::::NUMBER OF HEADER SECTIONS::::
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
    //return [movieList];
}
//::::NUMBER OF ROWS IN EACH SECTION::::
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0)
    {
        return 5;
    }
    else if (section == 1)
    {
        return 5;
    }
    else if (section == 2)
    {
        return 5;
    }
    return [movieList count];
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"CustomMovieCell";
        
    CustomMovieCell *cell =  (CustomMovieCell*) [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier ];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomMovieCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier ];
    }
    
    cell.movieTitle.text = [movieList objectAtIndex:indexPath.row];
    cell.thumbnailImage.image = [UIImage imageNamed:[thumbs objectAtIndex:indexPath.row]];
    cell.movieTimes.text = [showTimes objectAtIndex:indexPath.row];
    return cell;
}
//::::CUSTOM HEADER::::
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 60.0f, 60.0f)];
    UIImage *myImage = [UIImage imageNamed:@"headerImage.jpg"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:myImage];
    imageView.frame = CGRectMake(10.0f,10.0f,10.0f,10.0f);
    
    if (headerLabel != nil)
    {
        headerLabel.backgroundColor = [UIColor purpleColor];
        headerLabel.textColor = [UIColor yellowColor];
        if (section == 0)
        {
            headerLabel.text = @"Cinema 502 - Salem, VA";
            return headerLabel;
        }
        else if (section == 1)
        {
            headerLabel.backgroundColor = [UIColor redColor];
            headerLabel.text = @"Lake Cinema - Hardy, VA";
            return headerLabel;
        }
        else if (section == 2)
        {
            headerLabel.backgroundColor = [UIColor blueColor];
            
            headerLabel.text = @"Roanoke Plaza - Roanoke, VA";
            return headerLabel;
        }
    }
    return headerLabel;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 60;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //GETS the Movie
    NSString *selectedMovie = [movieList objectAtIndex:indexPath.row];
    
    DetailViewController *detailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    //[self.navigationController pushViewController:detailView animated:YES];
    [self presentModalViewController:detailView animated:YES];

    
    //detailView = nil;
}
- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    
    [self tableView:tableView didSelectRowAtIndexPath:indexPath];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
