//
//  main.c
//  Turkey
//
//  Created by Meisha Ray on 5/31/12.
//  Copyright (c) 2012 Blue Jar Studios. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    //Declare he variable called 'weight' of type floate
    float weight;
    
    //Put a number in that variable
    weight = 14.2;
    
    //Log it to the user
    printf("The Turkey weighs %f.\n", weight);
    
    //Declare another variable of type float
    float cookingTime;
    
    //Calculate the cooking time and store it in the variable
    cookingTime = 15.0 + 15.0 * weight;
    
    //Log it to the user
    printf("Cook the Turkey for %f minutes. \n", cookingTime);
    
    //End Function
    return 0;
}

