//
// Created by will on 9/13/23.
//

#include "world_quadrilateral.h"
#include "point.h"
#include <cmath>
#define PI 3.141592654

using namespace std;

WorldQuadrilateral::WorldQuadrilateral(const vector<Point> &points, const vector<Edge> &edges) : points(points),
                                                                                                 edges(edges) {}

const vector<Point> &WorldQuadrilateral::getPoints() const {
    return points;
}

void WorldQuadrilateral::setPoints(const vector<Point> &points) {
    WorldQuadrilateral::points = points;
}

const vector<Edge> &WorldQuadrilateral::getEdges() const {
    return edges;
}

bool WorldQuadrilateral::isinside(Point p) {
    return p.getX() >= this->points[0].getX() && p.getX() <= this->points[1].getX() &&
           p.getY() >= this->points[0].getY() && p.getY() <= this->points[3].getY() ? true : false;
}

double WorldQuadrilateral::getorientation(Point pA, Point pB){
    double y=pB.getY()-pA.getY();
    double x=pB.getX()-pA.getX();
    return atan2 (y,x) * 180.0/PI;
}

void WorldQuadrilateral::display() {
    for (int i = 0; i < this->points.size(); i++) {
        this->points[i].display();
    }
    for (int i = 0; i < this->edges.size(); i++) {
        cout << edges[i].startPointId << " --> " << edges[i].endPointId << endl;
    }
}

void WorldQuadrilateral::setEdges(const vector<Edge> &edges) {
    WorldQuadrilateral::edges = edges;
}

vector < vector<Point> > WorldQuadrilateral::splitQuadrilateral(int nx, int ny){
    vector<vector <Point> > W;
    vector<Point> waypoints;
    Point p1 = this->points[0];
    Point p2 = this->points[1];
    Point p3 = this->points[2];
    Point p4 = this->points[3];
    float weight=p1.distance(p2);
    float x_w=weight/nx;
    float height = p1.distance(p4);
    float y_w=height/ny;
    Point p=p1;
    for (int i = 0; i <= nx; ++i) {
        waypoints.push_back(p);
        for (int j = 0; j < ny; ++j) {
            p.setY(p.getY() + y_w);
            waypoints.push_back(p);
        }
        p.setX(p.getX() + x_w);
        p.setY(p1.getY());
    }
    //Sort the points
    for(int j=0; j<ny;j++){
        for(int i=0; i<nx; i++) {
            vector<Point> w;
            Point p1=waypoints[i * (ny + 1) + j];
            w.push_back(p1);

            Point p2=waypoints[(i + 1) * (ny + 1) + j];
            w.push_back(p2);

            Point p3=waypoints[(i + 1) * (ny + 1) + 1 + j];
            w.push_back(p3);

            Point p4=waypoints[i * (ny + 1) + 1 + j];
            w.push_back(p4);
            W.push_back(w);
        }
    }

    return W;
}

vector<Point> WorldQuadrilateral::getSubRegion(vector<vector<Point> > W, int index){
    for(int i=0; i<W[index].size();i++)
        W[index][i].display();
    return W[index];
};


vector<Point> WorldQuadrilateral::backandforthParallel(float perceptionLenght) {
    vector<Point> waypoints;
    Point p1 = this->points[0];
    Point p2 = this->points[1];
    Point p3 = this->points[2];
    Point p4 = this->points[3];
    float height = p4.distance(p1);
    int iter = (int) (height / perceptionLenght) + (height - perceptionLenght * iter != 0 ? 1 : 0);
    bool goback = true; //true=go --> , back=false <--
    waypoints.push_back(p4);
    waypoints.push_back(p3);
    height -= perceptionLenght;
    for (int i = 0; i < iter; i++) {
        if (height < 0) {
            if (iter % 2 == 1) {
                waypoints.push_back(p2);
                waypoints.push_back(p1);
            } else {
                waypoints.push_back(p1);
                waypoints.push_back(p2);
            }
            break;
        } else {
            p3.setY(p3.getY() - perceptionLenght);
            p4.setY(p4.getY() - perceptionLenght);
            if (goback == true) {
                waypoints.push_back(p3);
                waypoints.push_back(p4);
                goback = false;
            } else {
                waypoints.push_back(p4);
                waypoints.push_back(p3);
                goback = true;
            }
            if (p4.getX() == p1.getX() && p4.getY() == p1.getY()) {
                break;
            }
            height -= perceptionLenght;
        }
    }
    return waypoints;
}

vector<Point> WorldQuadrilateral::backandforthCreepingLine(float perceptionLenght) {
    vector<Point> waypoints;
    Point p1 = this->points[0];
    Point p2 = this->points[1];
    Point p3 = this->points[2];
    Point p4 = this->points[3];
    //float height=sqrt(pow(p4.getX() - p3.getX(), 2) + pow(p4.getY() - p3.getY(), 2) );
    float height = p4.distance(p3);
    int iter = (int) (height / perceptionLenght) + (height - perceptionLenght * iter != 0 ? 1 : 0);
    bool goback = true; //true=go --> , back=false <--
    waypoints.push_back(p4);
    waypoints.push_back(p1);
    height -= perceptionLenght;
    for (int i = 0; i < iter; i++) {
        if (height < 0) {
            if (iter % 2 == 1) {
                waypoints.push_back(p2);
                waypoints.push_back(p3);
            } else {
                waypoints.push_back(p3);
                waypoints.push_back(p2);
            }

            break;
        } else {
            p4.setX(p4.getX() + perceptionLenght);
            p1.setX(p1.getX() + perceptionLenght);
            if (goback == true) {
                waypoints.push_back(p1);
                waypoints.push_back(p4);
                goback = false;
            } else {
                waypoints.push_back(p4);
                waypoints.push_back(p1);
                goback = true;
            }
            if (p4.getX() == p3.getX() && p4.getY() == p3.getY()) {
                break;
            }
            height -= perceptionLenght;
        }
    }
    return waypoints;
}


vector<Point> WorldQuadrilateral::backandforthSquare(float perceptionLenght) {
    vector<Point> waypoints;
    float x_0 = this->points[0].distance(this->points[1]) / 2 + this->points[0].getX();
    float y_0 = this->points[3].distance(this->points[0]) / 2 + this->points[0].getY();
    Point p = Point(x_0, y_0, 0);
    waypoints.push_back(p);
    int iter = (int) min(this->points[0].distance(this->points[1]), this->points[0].distance(this->points[3])) /
               perceptionLenght;
    bool nordwest = true;
    for (int i = 1; i <= iter; i++) {
        if (nordwest == true) {
            //go nord
            p.setY(p.getY() + i * perceptionLenght);
            if (!this->isinside(p))
                return waypoints;
            waypoints.push_back(p);
            //go west
            p.setX(p.getX() + i * perceptionLenght);
            if (!this->isinside(p))
                return waypoints;
            waypoints.push_back(p);
            nordwest = false;
        } else {
            //go south
            p.setY(p.getY() - i * perceptionLenght);
            if (!this->isinside(p))
                return waypoints;
            waypoints.push_back(p);
            //go east
            p.setX(p.getX() - i * perceptionLenght);
            if (!this->isinside(p))
                return waypoints;
            waypoints.push_back(p);
            nordwest = true;
        }
    }
    return waypoints;
}

vector<Point> WorldQuadrilateral::backandforthSectorSearch(bool reachborder) {
    vector<Point> waypoints;
    float x_0 = this->points[0].distance(this->points[1]) / 2 + this->points[0].getX();
    float y_0 = this->points[3].distance(this->points[0]) / 2 + this->points[0].getY();
    Point p_0 = Point(x_0, y_0, 0);

    float weight = this->points[0].distance(this->points[1]) / 2;
    float height = this->points[0].distance(this->points[3]) / 2;
    waypoints.push_back(p_0);

    if (reachborder == true) {
        waypoints.push_back(Point(weight * cos(120) + x_0, this->points[2].getY(), 0));
        waypoints.push_back(Point(weight * cos(0) + x_0, height * sin(0) + y_0, 0));
        waypoints.push_back(p_0);

        waypoints.push_back(Point(x_0 - weight * cos(0), height * sin(0) + y_0, 0));
        waypoints.push_back(Point(x_0 - weight * cos(120), this->points[2].getY(), 0));
        waypoints.push_back(p_0);

        waypoints.push_back(Point(weight * cos(-120) + x_0, this->points[1].getY(), 0));
        waypoints.push_back(Point(x_0 - weight * cos(-120), this->points[1].getY(), 0));
        waypoints.push_back(p_0);
    } else {
        // waypoints.push_back(Point(weight * cos(120) + x_0, weight * sin(120) + y_0, 0));
        waypoints.push_back(Point(weight * cos(120) + x_0, height * sin(120) + y_0, 0));
        waypoints.push_back(Point(weight * cos(0) + x_0, height * sin(0) + y_0, 0));
        waypoints.push_back(p_0);

        //waypoints.push_back(Point(weight * cos(0) - x_0, height * sin(0) + y_0,0));
        waypoints.push_back(Point(x_0 - weight * cos(0), height * sin(0) + y_0, 0));
        waypoints.push_back(Point(x_0 - weight * cos(120), height * sin(120) + y_0, 0));
        waypoints.push_back(p_0);

        waypoints.push_back(Point(weight * cos(-120) + x_0, height * sin(-120) + y_0, 0));
        waypoints.push_back(Point(x_0 - weight * cos(-120), height * sin(-120) + y_0, 0));
        waypoints.push_back(p_0);
    }

    return waypoints;
}

vector<Point> WorldQuadrilateral::backandforthBarrierPatrol() {
    vector<Point> waypoints;
    float x_0 = this->points[0].distance(this->points[1]) / 2 + this->points[0].getX();
    float y_0 = this->points[3].distance(this->points[0]) / 2 + this->points[0].getY();
    Point p_0 = Point(x_0, y_0, 0);

    float weight = this->points[0].distance(this->points[1]) / 2;
    float height = this->points[0].distance(this->points[3]) / 2;
    waypoints.push_back(p_0);

    waypoints.push_back(Point(weight * cos(-30) + x_0, height * sin(-30) + y_0, 0));
    waypoints.push_back(Point(x_0 - weight * cos(90), height * sin(90) + y_0, 0));
    waypoints.push_back(p_0);

    waypoints.push_back(Point(x_0 - weight * cos(-60), height * sin(-60) + y_0, 0));
    waypoints.push_back(Point(x_0 - weight * cos(60), height * sin(60) + y_0, 0));
    waypoints.push_back(p_0);

    waypoints.push_back(Point(x_0 - weight * cos(-90), height * sin(-90) + y_0, 0));
    waypoints.push_back(Point(weight * cos(30) + x_0, height * sin(30) + y_0, 0));
    waypoints.push_back(p_0);

    waypoints.push_back(Point(x_0 - weight * cos(30), height * sin(30) + y_0, 0));
    waypoints.push_back(Point(weight * cos(-90) + x_0, height * sin(-90) + y_0, 0));
    waypoints.push_back(p_0);

    waypoints.push_back(Point(weight * cos(60) + x_0, height * sin(60) + y_0, 0));
    waypoints.push_back(Point(weight * cos(-60) + x_0, height * sin(-60) + y_0, 0));
    waypoints.push_back(p_0);

    waypoints.push_back(Point(weight * cos(90) + x_0, height * sin(90) + y_0, 0));
    waypoints.push_back(Point(x_0 - weight * cos(-30), height * sin(-30) + y_0, 0));
    waypoints.push_back(p_0);

    return waypoints;
}

vector<Point> WorldQuadrilateral::energyawareBackandforth(float perceptionLenght) {
    vector<Point> waypoints;
    Point p1 = this->points[0];
    Point p2 = this->points[1];
    Point p3 = this->points[2];
    Point p4 = this->points[3];
    float x_0 = p1.distance(p2) / 2 + p1.getX();
    float y_0 = p4.distance(p1) / 2 + p1.getY();
    Point p = Point(x_0, y_0, 0);
    float l = perceptionLenght / 2; // Drone position related to the baricenter of the perception lenght
    int iter = (int) min(p1.distance(p2), p1.distance(p4)) / perceptionLenght;
    bool isAbscissaMin = p1.distance(p2) < p1.distance(p4) ? true : false;
    for (int i = 1; i <= iter; i++) {
        p1.setX(p1.getX() + l);
        p1.setY(p1.getY() + l);
        p2.setX(p2.getX() - l), p2.setY(p2.getY() + l);
        p3.setX(p3.getX() - l);
        p3.setY(p3.getY() - l);
        p4.setX(p4.getX() + l), p4.setY(p4.getY() - l);
        if (isAbscissaMin == true) {//check if the quadrilateral is oriented over the x_axis
            if (p1.distance(p2) == 0) {
                waypoints.push_back(p3); // or we can add p4
                break;
            }
        } else {//check if the quadrilateral is oreinted over the y_axis
            if (p1.distance(p4) == 0) {
                waypoints.push_back(p3); //or we can add p2
                break;
            }
        }
        waypoints.push_back(p1);
        waypoints.push_back(p2);
        waypoints.push_back(p3);
        waypoints.push_back(p4);
        waypoints.push_back(Point(p1.getX(), p1.getY() + l, 0));// turning maneuver point
    }
    return waypoints;
}

vector<Point> WorldQuadrilateral::SCANNorthSouth(float perceptionLenght) {
    vector<Point> waypoints;
    Point p1 = this->points[0];
    Point p2 = this->points[1];
    Point p3 = this->points[2];
    Point p4 = this->points[3];
    float l = perceptionLenght;
    int iter_abs = (int) p1.distance(p2) / l;
    int iter_r_abs = p1.distance(p2) - l * iter_abs != 0 ? 1 : 0;
    int iter_ord = (int) p1.distance(p4) / l;
    int iter_r_ord = p1.distance(p4) - l * iter_ord != 0 ? 1 : 0;
    Point p = p1;
    bool go = true;
    waypoints.push_back(p);
    for (int i = 1; i <= iter_abs + iter_r_abs; i++) {
        //move to ord Y+ => move to North
        if (go == true) {
            for (int j = 1; j <= iter_ord + iter_r_ord; j++) {
                if (p.getY() + l <= p4.getY())//(j <= iter_ord)
                    p.setY(p.getY() + l);
                else
                    p.setY(p4.getY());
                waypoints.push_back(p);
            }
            go = false;
        }
            //move to ord Y- => move to South
        else {
            for (int j = 1; j <= iter_ord + iter_r_ord; j++) {
                if (p.getY() - l >= p2.getY())//(j <= iter_ord)
                    p.setY(p.getY() - l);
                else
                    p.setY(p2.getY());
                waypoints.push_back(p);
            }
            go = true;
        }

        //move to abs X+ ( move from West to East => move from p1 to p2)
        if (p.getX() + l <= p2.getX())//(i <= iter_abs)
            p.setX(p.getX() + l);
        else
            p.setX(p2.getX());
        waypoints.push_back(p);
    }

    if (iter_r_ord != 0 && p3.distance(p) != 0 && go == true) {
        while (p3.distance(p) > 0) {
            p.setY(p.getY() + l);
            waypoints.push_back(p);
        }
    }
    return waypoints;
}


vector<Point> WorldQuadrilateral::SCANWestEast(float perceptionLenght) {
    vector<Point> waypoints;
    Point p1 = this->points[0];
    Point p2 = this->points[1];
    Point p3 = this->points[2];
    Point p4 = this->points[3];
    float l = perceptionLenght;
    int iter_abs = (int) p1.distance(p2) / l;
    int iter_r_abs = p1.distance(p2) - l * iter_abs != 0 ? 1 : 0;
    int iter_ord = (int) p1.distance(p4) / l;
    int iter_r_ord = p1.distance(p4) - l * iter_ord != 0 ? 1 : 0;
    Point p = p1;
    bool go = true;
    waypoints.push_back(p);
    for (int i = 1; i <= iter_ord + iter_r_ord; i++) {
        //move to abs X +=> move to the East
        if (go == true) {
            for (int j = 1; j <= iter_abs + iter_r_abs; j++) {
                if (p.getX() + l <= p2.getX()) //(j <= iter_abs)
                    p.setX(p.getX() + l);
                else
                    p.setX(p2.getX());
                waypoints.push_back(p);
            }
            go = false;
        }
            //move to abs X- => move the West
        else {
            for (int j = 1; j <= iter_abs + iter_r_abs; j++) {
                if (p.getX() - l >= p1.getX()) //(j <= iter_abs)
                    p.setX(p.getX() - l);
                else
                    p.setX(p1.getX());
                waypoints.push_back(p);
            }
            go = true;
        }

        //move to ord Y+ (move from the South to the North => move from p1 to p4
        if (p.getY() + l <= p4.getY()) //(i <= iter_ord)
            p.setY(p.getY() + l);
        else
            p.setY(p4.getY());
        waypoints.push_back(p);
    }

    if (iter_r_abs != 0 && p3.distance(p) != 0 && go == true) {
        while (p3.distance(p) > 0) {
            p.setX(p.getX() + l);
            waypoints.push_back(p);
        }
    }
    return waypoints;
}


vector<Point> WorldQuadrilateral::LMATWestEast(float perceptionLenght) {
    vector<Point> waypoints;
    Point p1 = this->points[0];
    Point p2 = this->points[1];
    Point p3 = this->points[2];
    Point p4 = this->points[3];
    float l = perceptionLenght;
    int iter_abs = (int) p1.distance(p2) / l;
    int iter_r_abs = p1.distance(p2) - l * iter_abs != 0 ? 1 : 0;
    int iter_ord = (int) p1.distance(p4) / l;
    int iter_r_ord = p1.distance(p4) - l * iter_ord != 0 ? 1 : 0;
    Point p = p1;
    bool go = true;
    waypoints.push_back(p);
    for (int i = 1; i <= iter_ord + iter_r_ord; i++) {
        //move to abs X +=> move to the East
        if (go == true) {
            for (int j = 1; j <= iter_abs + iter_r_abs; j++) {
                if (p.getX() + l <= p2.getX()) {
                    waypoints.push_back(Point(p.getX() + l / 2, p.getY() + l, 0));
                    p.setX(p.getX() + l);
                } else
                    p.setX(p2.getX());
                waypoints.push_back(p);
            }
            go = false;
        }
            //move to abs X- => move the West
        else {
            for (int j = 1; j <= iter_abs + iter_r_abs; j++) {
                if (p.getX() - l >= p1.getX()) {
                    waypoints.push_back(Point(p.getX() - l / 2, p.getY() + l, 0));
                    p.setX(p.getX() - l);
                } else
                    p.setX(p1.getX());
                waypoints.push_back(p);
            }
            go = true;
        }

        //move to ord Y+ (move from the South to the North => move from p1 to p4
        if (p.getY() + l <= p4.getY()) //(i <= iter_ord)
            p.setY(p.getY() + l);
        else
            p.setY(p4.getY());
        waypoints.push_back(p);
    }

    if (iter_r_abs != 0 && p3.distance(p) != 0 && go == true) {
        while (p3.distance(p) > 0) {
            waypoints.push_back(Point(p.getX() + l / 2, p.getY() + l, 0));
            p.setX(p.getX() + l);
            waypoints.push_back(p);
        }
    }
    return waypoints;
}


vector<Point> WorldQuadrilateral::LMATNorthSouth(float perceptionLenght) {
    vector<Point> waypoints;
    Point p1 = this->points[0];
    Point p2 = this->points[1];
    Point p3 = this->points[2];
    Point p4 = this->points[3];
    float l = perceptionLenght;
    int iter_abs = (int) p1.distance(p2) / l;
    int iter_r_abs = p1.distance(p2) - l * iter_abs != 0 ? 1 : 0;
    int iter_ord = (int) p1.distance(p4) / l;
    int iter_r_ord = p1.distance(p4) - l * iter_ord != 0 ? 1 : 0;
    Point p = p1;
    bool go = true;
    waypoints.push_back(p);
    for (int i = 1; i <= iter_abs + iter_r_abs; i++) {
        //move to ord Y+ => move to North
        if (go == true) {
            for (int j = 1; j <= iter_ord + iter_r_ord; j++) {
                if (p.getY() + l <= p4.getY()) {
                    waypoints.push_back(Point(p.getX() + l, p.getY() + l / 2, 0));
                    p.setY(p.getY() + l);
                } else
                    p.setY(p4.getY());
                waypoints.push_back(p);
            }
            go = false;
        }
            //move to ord Y- => move to South
        else {
            for (int j = 1; j <= iter_ord + iter_r_ord; j++) {
                if (p.getY() - l >= p2.getY()) {
                    waypoints.push_back(Point(p.getX() + l, p.getY() - l / 2, 0));
                    p.setY(p.getY() - l);
                } else
                    p.setY(p2.getY());
                waypoints.push_back(p);
            }
            go = true;
        }

        //move to abs X+ ( move from West to East => move from p1 to p2)
        if (p.getX() + l <= p2.getX())//(i <= iter_abs)
            p.setX(p.getX() + l);
        else
            p.setX(p2.getX());
        waypoints.push_back(p);
    }

    if (iter_r_ord != 0 && p3.distance(p) != 0 && go == true) {
        while (p3.distance(p) > 0) {
            waypoints.push_back(Point(p.getX() + l, p.getY() + l / 2, 0));
            p.setY(p.getY() + l);
            waypoints.push_back(p);
        }
    }
    return waypoints;
}

vector<Point> WorldQuadrilateral::HILBERT(float perceptionLenght, int m, Point &p0) {
    vector<Point> waypoints;
    int n = i4_power(2, m);

    for (int d = 0; d < n * n; d++) {
        int rx;
        int ry;
        int s;
        int t = d;

        int x = 0;
        int y = 0;
        for (s = 1; s < n; s = s * 2) {
            rx = (1 & (t / 2));
            ry = (1 & (t ^ rx));
            rotateFlip(s, x, y, rx, ry);
            x = x + s * rx;
            y = y + s * ry;
            t = t / 4;
        }
        waypoints.push_back(Point((x + p0.getX()) * perceptionLenght, (y + p0.getY()) * perceptionLenght, 0));
    }
    return waypoints;
}