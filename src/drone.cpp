/*
 * drone.cpp
 *
 *  Created on: 6 Mar 2023
 *      Author: adoni42
 */
#include <iostream>

#include "drone.h"
#include "landmark.h"
#include "sense.h"
#include "point.h"

using namespace std;

//***********************CONSTRUCTORS***********************************************************
Drone::Drone()
{
    this->worldSize=100;
    this->measurementRange=30;
    this->motionNoise=0;
    this->measurementNoise=0;
    this->position=Point(worldSize/2,worldSize/2,worldSize/2);
    this->numLandmarks=0;
    //this->landmarks=new vector<Landmark>();
    //vector<Landmark> *this->landmarks = new vector<Landmark>();

}

Drone::Drone(float worldSize, float measurementRange, float motionNoise, float measurementNoise)
{
    this->worldSize=worldSize;
    this->measurementRange=measurementRange;
    this->motionNoise=motionNoise;
    this->measurementNoise=measurementNoise;
    this->position=Point(worldSize/2,worldSize/2,worldSize/2);
    this->numLandmarks=0;
    //this->landmarks=new vector<Landmark>();
}

//***********************GETTERS***********************************************************
float Drone::getWorldSize(){return this->worldSize;}
float Drone::getMeasurementRange(){return this->measurementRange;}
float Drone::getMotionNoise(){return this->motionNoise;}
float Drone::getMeasurementNoise(){return this->measurementNoise;}
Point Drone::getPosition(){return this->position;}
float Drone::getNumLandmarks(){return this->numLandmarks;}
vector<Landmark> Drone::getLandmarks(){return this->landmarks;}


//***********************SETTERS***********************************************************
void Drone::setWorldSize(float worldSize){this->worldSize=worldSize;}
void Drone::setMeasurementRange(float measurementRange){this->measurementRange=measurementRange;}
void Drone::setMotionNoise(float motionNoise){this->motionNoise=motionNoise;}
void Drone::setMeasurementNoise(float measurementNoise){this->measurementNoise=measurementNoise;}
void Drone::setPosition(Point position){this->position=position;}
void Drone::setNumLandmarks(int numLandmarks){this->numLandmarks=numLandmarks;}
void Drone::setLandmarks(vector<Landmark> landmarks){this->landmarks=landmarks;}


//***********************METHODS***********************************************************
float Drone::random()
{
	srand((unsigned) time(NULL));
    return rand()*2.0-1.0;
}


bool Drone::move(float dx, float dy, float dz)
{
    bool movingstate;
    float x=this->position.getX() + dx + this->random() * this->motionNoise;
    float y=this->position.getY() + dy + this->random() * this->motionNoise;
    float z=this->position.getZ() + dz + this->random() * this->motionNoise;
    if(x<0 || x> this->worldSize || y<0 || y> this->worldSize)
        movingstate= true;
    else{
        this->position.setX(x);
        this->position.setY(y);
        this->position.setZ(z);
        movingstate= false;
    }
    return movingstate;
}


vector<Sense> Drone::sense()
{
    vector<Sense> measurements;
    for(Landmark landmark : this->landmarks){
        //compute dx and dy and dz
        float dx=landmark.getPoint().getX();
        float dy=landmark.getPoint().getY();
        float dz=landmark.getPoint().getZ();
        //adding noise
        float noise = this->random()*this->measurementNoise;
        dx+=noise;
        dy+=noise;
        dz+=noise;
        //check if out of range
        if(abs(dx) < this->measurementRange && abs(dy) < this->measurementRange && abs(dz) < this->measurementRange){
            Sense sense= Sense(landmark, dx, dy, dz);
            measurements.push_back(sense);
        }
    }
    return measurements;
}
