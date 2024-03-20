/*
 * sense.h
 *
 *  Created on: 6 Mar 2023
 *      Author: adoni42
 */

#ifndef SENSE_H_
#define SENSE_H_

#include "landmark.h"

class Sense
{
	private:
		Landmark landmark;
		float dx;
		float dy;
		float dz;
	public:
		Sense();
		Sense(Landmark landmark, float dx, float dy, float dz);
		Landmark getLandmark();
		float getDx();
		float getDy();
		float getDz();
		void setDx(float dx);
		void setDy(float dy);
		void setDz(float dz);
		void display();
};

#endif /* SENSE_H_ */
