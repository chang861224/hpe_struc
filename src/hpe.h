#ifndef HPE_H
#define HPE_H

//#include "smore/src/model/LINE.h"
#include "line.h"

/*****
 * HPE
 * **************************************************************/

class HPE: public LINE {

    public:

        HPE();
        ~HPE();

        void SaveWeights(string);

        // model function
        void Init(int);
        void Init(int, char*, char*);
        void Train(int, int, int, double, double, int);

};


#endif
