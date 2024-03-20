/*
 * point.cpp
 *
 *  Created on: 8 Mar 2023
 *      Author: adoni42
 */
#include <cmath>
#include <iostream>
#include "point.h"

using namespace std;


Point::Point(){
	this->x=0;
	this->y=0;
	this->z=0;
}

Point::Point(float x, float y, float z, float angle){
	this->x=x;
	this->y=y;
	this->z=z;
    this->angle=angle;
}

float Point::getX(){return this->x;}
float Point::getY(){return this->y;}
float Point::getZ(){return this->z;}
float Point::getAngle(){return this->angle;}

void Point::setX(float x){this->x=x;}
void Point::setY(float y){this->y=y;}
void Point::setZ(float z){this->z=z;}
void Point::setAngle(float angle){this->angle=angle;}

void Point::display(){
	cout << "(" << this->x <<"," <<this->y <<"," << this->z << "," << this->angle <<")";
}

Point Point::setprecision(double precision=1.0){
	return Point(round(this->getX() / precision) * precision,
			round(this->getY() / precision) * precision,
			this->getZ(), this->angle
			);
}


float Point::distance(Point p2) {
    return sqrt(pow(this->getX() - p2.getX(), 2) + pow(this->getY() - p2.getY(), 2));
}