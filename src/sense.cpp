/*
 * sense.cpp
 *
 *  Created on: 6 Mar 2023
 *      Author: adoni42
 */

#include <iostream>

#include "sense.h"
#include "landmark.h"
using namespace std;

Sense::Sense(){
	this->landmark= Landmark();
	this->dx=0;
	this->dy=0;
	this->dz=0;
}

Sense::Sense(Landmark landmark, float dx, float dy, float dz){
	this->landmark= landmark;
	this->dx=dx;
	this->dy=dy;
	this->dz=dz;
}

float Sense::getDx(){return this->dx;}
float Sense::getDy(){return this->dy;}
float Sense::getDz(){return this->dz;}

void Sense::setDx(float dx){this->dx=dx;}
void Sense::setDy(float dy){this->dy=dy;}
void Sense::setDz(float dz){this->dz=dz;}

void Sense::display(){
	cout <<"[" << this->landmark.getItem() <<",";
	cout << this->getDx() <<",";
	cout << this->getDy() <<",";
	cout << this->getDz() <<"]";
}
