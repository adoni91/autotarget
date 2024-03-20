/*
 * point.h
 *
 *  Created on: 8 Mar 2023
 *      Author: adoni42
 */

#ifndef POINT_H_
#define POINT_H_

class Point {
	private:
		float x;
		float y;
		float z;
        float angle;
	public:
		Point();
		Point(float x, float y, float z, float angle=0);
		float getX();
		float getY();
		float getZ();
        float getAngle();
		void setX(float x);
		void setY(float y);
		void setZ(float z);
        void setAngle(float angle);
        float distance(Point p2);
		void display();
		Point setprecision(double precision);
};

#endif /* POINT_H_ */
