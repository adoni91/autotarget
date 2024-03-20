//
// Created by will on 9/13/23.
//

#ifndef AUTOTARGET_WORLD_QUADRILATERAL_H
#define AUTOTARGET_WORLD_QUADRILATERAL_H

#include <iostream>
#include <vector>

#include "point.h"

using namespace std;

struct Edge {
    int startPointId;
    int endPointId;
};

class WorldQuadrilateral {
private:
    vector<Point> points = vector<Point>(4);
    vector<Edge> edges = vector<Edge>(4);
    int nbSplit;
public:
    WorldQuadrilateral(const vector<Point> &points, const vector<Edge> &edges={});

    const vector<Point> &getPoints() const;

    void setPoints(const vector<Point> &points);

    const vector<Edge> &getEdges() const;

    void setEdges(const vector<Edge> &edges);

    bool isSquare();

    vector<Point> backandforthParallel(float perceptionLenght);

    vector<Point> backandforthCreepingLine(float perceptionLenght);

    vector<Point> backandforthSquare(float perceptionLenght);

    vector<Point> backandforthSectorSearch(bool reachborder);

    vector<Point> backandforthBarrierPatrol();

    vector<Point> energyawareBackandforth(float perceptionLenght);

    vector<Point> SCANNorthSouth(float perceptionLenght);

    vector<Point> SCANWestEast(float perceptionLenght);

    vector<Point> LMATNorthSouth(float perceptionLenght);

    vector<Point> LMATWestEast(float perceptionLenght);

    vector<Point> HILBERT(float perceptionLenght, int m, Point &p0);

    vector< vector<Point> > splitQuadrilateral(int nx, int ny);

    vector<Point>getSubRegion(vector< vector<Point> > W, int index);

    double getorientation(Point pA, Point pB);

    void display();

    bool isinside(Point p);

    //  ROT rotates and flips a quadrant appropriately
    void rotateFlip(int n, int &x, int &y, int rx, int ry) {
        int t;
        if (ry == 0) {
            //
            //  Reflect.
            //
            if (rx == 1) {
                x = n - 1 - x;
                y = n - 1 - y;
            }
            //
            //  Flip.
            //
            t = x;
            x = y;
            y = t;
        }
        return;
    }

    int i4_power(int i, int j) {
        int k;
        int value;

        if (j < 0) {
            if (i == 1) {
                value = 1;
            } else if (i == 0) {
                cerr << "\n";
                cerr << "I4_POWER - Fatal error!\n";
                cerr << "  I^J requested, with I = 0 and J negative.\n";
                exit(1);
            } else {
                value = 0;
            }
        } else if (j == 0) {
            if (i == 0) {
                cerr << "\n";
                cerr << "I4_POWER - Fatal error!\n";
                cerr << "  I^J requested, with I = 0 and J = 0.\n";
                exit(1);
            } else {
                value = 1;
            }
        } else if (j == 1) {
            value = i;
        } else {
            value = 1;
            for (k = 1; k <= j; k++) {
                value = value * i;
            }
        }
        return value;
    }

};

#endif //AUTOTARGET_WORLD_QUADRILATERAL_H
