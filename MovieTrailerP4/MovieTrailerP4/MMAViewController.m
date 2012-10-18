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
#import "Movie.h"

@interface MMAViewController ()

@end

@implementation MMAViewController
{
   
    NSArray *thumbs;
    NSArray *showTimes;
    NSArray *movies;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    movieList = [NSArray arrayWithObjects:
                 @"The Lorax",
                 @"G.I. Joe",
                 @"Safe",
                 @"Battle Ship",
                 @"Finding Nemo 3D",
                 nil];

    thumbs = [NSArray arrayWithObjects:
              @"theLorax.jpg",
              @"giJoe.jpg",
              @"safe.jpg",
              @"battleShip.jpg",
              @"nemo.jpg",
              nil];
    
    showTimes = [NSArray arrayWithObjects:
                 @"2:40pm, 5:40pm, 7:40pm",
                 @"2:40pm, 5:40pm, 7:40pm",
                 @"2:40pm, 5:40pm, 6:00pm",
                 @"2:40pm, 5:40pm, 7:40pm",
                 @"1:30pm, 6:40pm, 9:40pm",
                 nil];
    
    
    
    Movie *movie1 = [Movie new];
    movie1.movieName = @"The Lorax";
    movie1.times = @"2:40pm, 5:40pm, 7:40pm";
    movie1.imageFile = @"theLorax.jpg";
    
    
    Movie *movie2 = [Movie new];
    movie2.movieName = @"G.I. Joe";
    movie2.times = @"2:40pm, 5:40pm, 7:40pm";
    movie2.imageFile = @"mushroom_risotto.jpg";
    
    
    Movie *movie3 = [Movie new];
    movie3.movieName = @"Safe";
    movie3.times = @"2:40pm, 5:40pm, 6:00pm";
    movie3.imageFile = @"safe.jpg";
    
    
    Movie *movie4 = [Movie new];
    movie4.movieName = @"Battleship";
    movie4.times = @"2:40pm, 5:40pm, 7:40pm";
    movie4.imageFile = @"battleship.jpg";
    
    
    Movie *movie5 = [Movie new];
    movie5.movieName = @"Finding Nemo 3D";
    movie5.times = @"1:30pm, 6:40pm, 9:40pm";
    movie5.imageFile = @"nemo.jpg";
    
    Movie *movie6 = [Movie new];
    movie6.movieName = @"The Lorax";
    movie6.times = @"2:40pm, 5:40pm, 7:40pm";
    movie6.imageFile = @"theLorax.jpg";
    
    
    Movie *movie7 = [Movie new];
    movie7.movieName = @"G.I. Joe";
    movie7.times = @"2:40pm, 5:40pm, 7:40pm";
    movie7.imageFile = @"mushroom_risotto.jpg";
    
    
    Movie *movie8 = [Movie new];
    movie8.movieName = @"Safe";
    movie8.times = @"2:40pm, 5:40pm, 6:00pm";
    movie8.imageFile = @"safe.jpg";
    
    
    Movie *movie9 = [Movie new];
    movie9.movieName = @"Battleship";
    movie9.times = @"2:40pm, 5:40pm, 7:40pm";
    movie9.imageFile = @"battleship.jpg";
    
    
    Movie *movie10 = [Movie new];
    movie10.movieName = @"Finding Nemo 3D";
    movie10.times = @"1:30pm, 6:40pm, 9:40pm";
    movie10.imageFile = @"nemo.jpg";
    
    Movie *movie11 = [Movie new];
    movie11.movieName = @"Finding Nemo 3D";
    movie11.times = @"1:30pm, 6:40pm, 9:40pm";
    movie11.imageFile = @"nemo.jpg";
    
    Movie *movie12 = [Movie new];
    movie12.movieName = @"Finding Nemo 3D";
    movie12.times = @"1:30pm, 6:40pm, 9:40pm";
    movie12.imageFile = @"nemo.jpg";
    
    Movie *movie13 = [Movie new];
    movie13.movieName = @"Finding Nemo 3D";
    movie13.times = @"1:30pm, 6:40pm, 9:40pm";
    movie13.imageFile = @"nemo.jpg";
    
    Movie *movie14 = [Movie new];
    movie14.movieName = @"Finding Nemo 3D";
    movie14.times = @"1:30pm, 6:40pm, 9:40pm";
    movie14.imageFile = @"nemo.jpg";
    
    Movie *movie15 = [Movie new];
    movie15.movieName = @"Finding Nemo 3D";
    movie15.times = @"1:30pm, 6:40pm, 9:40pm";
    movie15.imageFile = @"nemo.jpg";
    
    
    movies = [NSArray arrayWithObjects:movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8, movie9, movie10, movie11, movie12, movie13, movie14, movie15, nil];
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
    //NSString *selectedMovie = [movieList objectAtIndex:indexPath.row];
    
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
