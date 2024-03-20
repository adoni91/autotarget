/*
 * landmark.h
 *
 *  Created on: 6 Mar 2023
 *      Author: adoni42
 */

#ifndef LANDMARK_H_
#define LANDMARK_H_
#include "point.h"

class Landmark
{
	private:
		int item;
		Point point;

	public:
		//Constructors
		Landmark();
		Landmark(int item, Point p);
		//Getters
		int getItem();
		Point getPoint();
		//Setters
		void setItem(int item);
		void setPoint(Point p);
		//print
		void display();
};

#endif /* LANDMARK_H_ */
