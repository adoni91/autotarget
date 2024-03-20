/*
 * landmark.cpp
 *
 *  Created on: 6 Mar 2023
 *      Author: adoni42
 */

#include "landmark.h"
#include "point.h"
#include <iostream>

using namespace std;

//Constructor
Landmark::Landmark()
{
	this->item=0;
	this->point=Point();
}

Landmark::Landmark(int item, Point point)
{
	this->item=item;
	this->point=point;
}

//Getters
int Landmark::getItem(){return this->item;}
Point Landmark::getPoint(){return this->point;}

//Setters
void Landmark::setItem(int item){this->item=item;}
void Landmark::setPoint(Point point){this->point=point;}

//print
void Landmark::display()
{
	cout << "landmark " <<this->item << " ";
	this->point.display();
}
