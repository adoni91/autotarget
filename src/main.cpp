//============================================================================
// Name        : slamtest.cpp
// Author      : HIF-DIGI
// Version     :
// Copyright   : Your copyright notice
// Description : Hello World in C++, Ansi-style
//============================================================================

#include <iostream>
# include <iomanip>
#include <cmath>


#include "../include/landmark.h"
#include "../include/world_circle.h"
#include "../include/sense.h"
#include "../include/drone.h"
#include "../include/point.h"
#include "../include/drone.h"


#include "../include/world_quadrilateral.h"

using namespace std;



int main() {
    vector<Point> points;
    vector<Edge> edges;

    /*points.push_back(Point(0,0,0));
    points.push_back(Point(3,0,0));
    points.push_back(Point(3,6,0));
    points.push_back(Point(0,6,0));

    points.push_back(Point(0,0,0));
    points.push_back(Point(4,0,0));
    points.push_back(Point(4,2,0));
    points.push_back(Point(0,2,0));*/


    /*points.push_back(Point(0,0,0));
    points.push_back(Point(4,0,0));
    points.push_back(Point(4,8,0));
    points.push_back(Point(0,8,0));*/


    points.push_back(Point(0,0,0));
    points.push_back(Point(8,0,0));
    points.push_back(Point(8,4,0));
    points.push_back(Point(0,4,0));

    Edge e;
    e.startPointId=1;e.endPointId=2;edges.push_back(e);
    e.startPointId=1;e.endPointId=4;edges.push_back(e);

    e.startPointId=2;e.endPointId=1;edges.push_back(e);
    e.startPointId=2;e.endPointId=3;edges.push_back(e);

    e.startPointId=3;e.endPointId=2;edges.push_back(e);
    e.startPointId=3;e.endPointId=4;edges.push_back(e);

    e.startPointId=4;e.endPointId=1;edges.push_back(e);
    e.startPointId=4;e.endPointId=3;edges.push_back(e);


    int nx=2;
    int ny=2;
    WorldQuadrilateral wq = WorldQuadrilateral(points, edges);
    //vector<vector<Point> > wp=wq.splitQuadrilateral(nx,ny);

    /*vector< vector<Point> > W;
    for(int j=0; j<ny;j++){
        vector<Point> w;
        for(int i=0; i<nx; i++) {
            Point p1=wp[i * (ny + 1) + j];
            p1.display();
            w.push_back(p1);
            cout << "--";
            Point p2=wp[(i + 1) * (ny + 1) + j];
            p2.display();
            w.push_back(p2);
            cout << "--";

            Point p3=wp[(i + 1) * (ny + 1) + 1 + j];
            p3.display();
            w.push_back(p3);
            cout << "\n";
            Point p4=wp[i * (ny + 1) + 1 + j];
            p4.display();
            w.push_back(p4);
            cout << "--";
        }
        W.push_back(w);
        cout << "----------------------------------------------\n";
    }*/

    vector< vector<Point> > W=wq.splitQuadrilateral(nx,ny);
    for(int i=0; i<W.size(); i++){
            wq.getSubRegion(W, i);
            cout <<"\n---------------------\n";
    }




/*
    int m = 3;
    float perception=1;
    vector<Point> wp=wq.HILBERT(perception, m, points[0]);
    wp[0].display();
    cout <<"\n";
    for(int i=1; i<wp.size(); i++) {
        wp[i].setAngle(wq.getorientation(wp[i-1], wp[i]));
        wp[i].display();
        cout <<"\n";
    }




     *
     *
	//Landmark l= Landmark(0,1,1,1);
	//l.display();
	//Sense s=Sense(l,1,1,1);
	//s.display();
	Drone d=Drone();
	Point origin;
	float radius=4;
	int nbsplit=5;
	//int nblandmark=;
	float perceptionLenght=1;
	//int sysId=0;
    WorldCircle w=WorldCircle(origin,radius,nbsplit);

	w.createBoundaries();
	cout <<"\n\n\n";
	for(int sysID=0;sysID<nbsplit;sysID++){
		cout <<"\n\n\n**************************************  drone "<<sysID<<" **************************************   " <<endl;
		w.computePathway(sysID, perceptionLenght);
	}

    *
     *
     * /

	// Waypoint computing

	/*w.getBoundaries(1)[1].display();
	cout <<"\n";
    float x_o=origin.getX();
    float y_o=origin.getY();
    float r=radius;
    float rp=1;
	for(int i=0;i<4;i++){
		r=r-rp;
        float x=x_o + r * cos(90 * M_PI / 180);
        float y=y_o + r * sin(90 * M_PI / 180);
    	cout << "(" << x << "," << y <<")\n";
	}
	*/

	/*for(int i=0;i<w.getNbSplit();i++){
		w.getBoundaries(i);cout <<"\n";
	}
	w.computePathway(1, perceptionLenght);

	/*w.generateLandmarks(sysId,nblandmark);
	//d.setLandmarks(w.generateLandmarks(sysId,nblandmark));
	//d.getLandmarks()[2].display();
	w.computePathway(i, perceptionLenght);
	cout <<"-------------------------------------------------\n\n\n";
	*/

	return 0;
}
