/*
 * world.cpp
 *
 *  Created on: 6 Mar 2023
 *      Author: Wilfried Yves Hamilton Adoni, Sandra Lorenz, Samuel Thiele, Junaidh
 */
#include <cmath>
#include "world_circle.h"
#include "landmark.h"
#include "point.h"

using namespace std;

//Constructors
WorldCircle::WorldCircle()
{
	this->origin=Point();
	this->radius=0;
	this->nbSplit=0;
}


WorldCircle::WorldCircle(Point origin, float radius, int nbSplit)
{
	this->origin=origin;
	this->radius=radius;
	this->nbSplit=nbSplit;
}

//Getters
Point WorldCircle::getOrigin(){return this->origin;}
float WorldCircle::getRadius(){return this->radius;}
float WorldCircle::getNbSplit(){return this->nbSplit;}
vector<Point> WorldCircle::getBoundaries(){return this->boundaries;}

//Setters
void WorldCircle::setOrigin(Point origin){this->origin=origin;}
void WorldCircle::setRadius(float radius){this->radius=radius;}
void WorldCircle::setNbSplit(float nbSplit){this->nbSplit=nbSplit;}
void WorldCircle::setBoundaries(vector<Point> boundaries){this->boundaries=boundaries;}


//Methods
void WorldCircle::createBoundaries()
{
	double angle=0;
	for(int i=0; i<this->nbSplit;i++){
        angle = i * (360/this->nbSplit);
        float x_o=this->origin.getX();
        float y_o=this->origin.getY();
        float x=x_o + this->radius * cos(angle * M_PI / 180);
        float y=y_o + this->radius * sin(angle * M_PI / 180);
        this->boundaries.push_back(Point(x,y,0));
        this->boundariesAngles.push_back(angle);
	}

	cout <<"world boundary \n";
	for(int i=0;i<this->boundaries.size();i++){
		this->boundaries[i].display();
		cout <<"  angle= "<<this->boundariesAngles[i] <<"\n";
	}
}

vector<Point> WorldCircle::getBoundaries(int sysID){
	vector<Point> boundaries;
	Point p1=Point(this->boundaries[sysID].getX(), this->boundaries[sysID].getY(), 0);
	Point p2=Point(this->boundaries[sysID+1].getX(), this->boundaries[sysID+1].getY(), 0);
	boundaries.push_back(p1);
	if((sysID+1)==this->nbSplit)
		p2=Point(this->boundaries[0].getX(), this->boundaries[0].getY(), 0);
	boundaries.push_back(p2);
	//cout <<"the boundary space of the drone "<<sysID <<" is ";
	//p1.display();
	//cout <<" , " ;
	//p2.display();
	return boundaries;
}

vector<Point> WorldCircle::computePathway(int sysID, float perceptionLenght)
{
    vector<Point> pathway;
    int i=sysID;
    //GET THE FIRST BOUNDARY
    float x_i =this->getBoundaries(i)[0].getX();
    float y_i =this->getBoundaries(i)[0].getY();
    float angle_i=this->boundariesAngles[i];
    pathway.push_back(this->getBoundaries(i)[0]);

    //GET THE SECOND BOUNDARY
    float x_j =this->getBoundaries(i)[1].getX();
    float y_j =this->getBoundaries(i)[1].getY();
    float angle_j=this->boundariesAngles[i+1];
    pathway.push_back(this->getBoundaries(i)[1]);

    this->getBoundaries(i)[0].display();
    cout <<"-->";
    this->getBoundaries(i)[1].display();
    cout <<"\n";

    //GET THE ORIGIN POINT & RADIUS OF THE WORLD & NUMBER OF ITERATIONS NEEDED
    float x_o=this->origin.getX();
    float y_o=this->origin.getY();
    float radius=this->radius;
    int iter=(int)(radius/perceptionLenght)+(radius-perceptionLenght*iter!=0?1:0);
	//cout <<"number iteration --------"<< iter <<"\n\n";

    //COMPUTE THE WAYPOINTS
	for(int i=0; i<iter; i++){
		//cout <<"iter --------"<< i <<endl;
		radius-=perceptionLenght;
		x_i= x_o + radius*cos(angle_i * M_PI / 180);
		y_i= y_o + radius*sin(angle_i * M_PI / 180);
		pathway.push_back(Point(x_i,y_i,0));
		x_j= x_o + radius*cos(angle_j * M_PI / 180);
		y_j= y_o + radius*sin(angle_j * M_PI / 180);
		pathway.push_back(Point(x_j,y_j,0));

		Point(x_j,y_j,0).display();
        cout <<"-->";
		Point(x_i,y_i,0).display();
        //STOP CONDITION
		if((x_i == x_o && y_i==y_o) || (x_j == x_o && y_j==y_o) || radius<=0)
			 break;
		 cout <<"\n";
	}
    return pathway;
}


vector<Landmark> WorldCircle::generateLandmarks(int worlID, int nbLandmarks){
	vector<Landmark> landmarks;
	srand((unsigned) time(NULL));
    Point & p_i=this->boundaries[worlID];
    Point & p_j=this->boundaries[worlID+1];
	for(int i=0; i<nbLandmarks;i++){
		float r1=rand();
		float r2=rand();
        float x_o=this->origin.getX();
        float y_o=this->origin.getX();
	    float x = (1 - sqrt(r1)) * x_o + (sqrt(r1) * (1 - r2)) * p_i.getX() + (sqrt(r1) * r2) * p_j.getX();
	    float y = (1 - sqrt(r1)) * y_o + (sqrt(r1) * (1 - r2)) * p_i.getY() + (sqrt(r1) * r2) * p_j.getY();
		landmarks.push_back(Landmark(i, Point(x, y, 0)));
		//landmarks[i].display();
		cout <<"\n";
	}
	return landmarks;
};



