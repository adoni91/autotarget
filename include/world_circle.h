/*
 * world.h
 *
 *  Created on: 6 Mar 2023
 *      Author: adoni42
 */

#ifndef AUTOTARGET_WORLD_CIRCLE_H
#define AUTOTARGET_WORLD_CIRCLE_H

#include <iostream>
#include <vector>

#include "landmark.h"
#include "sense.h"
#include "point.h"

using namespace std;
class WorldCircle {
	private:
		Point origin;
		float radius;
		int nbSplit;
		vector<Point> boundaries;
		vector<float> boundariesAngles;
	public:
        WorldCircle();
        WorldCircle(Point origin, float radius, int nbSplit);

		//Getters
		Point getOrigin();
		float getRadius();
		float getNbSplit();
		vector<Point> getBoundaries();
		vector<float> getBoundariesAngles();

		//Setters
		void setOrigin(Point origin);
		void setRadius(float radius);
		void setNbSplit(float nbSplit);
		void setBoundaries(vector<Point> boundaries);
		void setBoundariesAngles(vector<float> boundariesAngles);

		//Methods
		void createBoundaries();
		vector<Point> computePathway(int sysID, float perceptionLenght);
		vector<Point> getBoundaries(int sysID);
		vector<Landmark> generateLandmarks(int worldID, int nbLandmarks);
		vector<Point> getBoundary(int sysID);

};

#endif //AUTOTARGET_WORLD_CIRCLE_H

