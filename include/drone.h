/*
 * drone.h
 *
 *  Created on: 6 Mar 2023
 *      Author: adoni42
 */

#ifndef DRONE_H_
#define DRONE_H_

#include <iostream>
#include <vector>

#include "landmark.h"
#include "sense.h"
#include "point.h"

using namespace std;

class Drone
{
	private:
		float worldSize;
		float measurementRange;
	    float motionNoise;
	    float measurementNoise;
	    Point position;
	    int numLandmarks;
	    vector<Landmark> landmarks;
	public:
		//Constructors
		Drone();
		Drone(float worldSize, float measurementRange, float motionNoise, float measurementNoise);

		//Getters
		float getWorldSize();
		float getMeasurementRange();
		float getMeasurementNoise();
        float getMotionNoise();
        Point getPosition();
		float getNumLandmarks();
        vector<Landmark> getLandmarks();

		//Setters
		void setWorldSize(float worldSize);
		void setMeasurementRange(float measurementRange);
		void setMeasurementNoise(float measurementNoise);
        void setMotionNoise(float motionNoise);
		void setPosition(Point position);
		void setNumLandmarks(int numLandmarks);
		void setLandmarks(vector<Landmark> landmarks);

		//Methods
		void createBoundary();
		float random();
		bool move(float dx, float dy, float dz);
        vector<Sense> sense(); //to review
		void makeLandmarks(int numLandmarks);
		void print();
};

#endif /* DRONE_H_ */
