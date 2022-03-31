#include "struc.h"

void Struc2vec(string filename, int dimension, bool undirected, int num_walks, int walk_length){
    Graph G(filename, undirected);
    struc2vec model(G, 3);

    model.PreprocessNeighborsBFS();
    model.CalDistVertices();
    // model.CalDistAllVertices();
    model.CreateDistNetwork();
    model.PreprocessParamsRandomWalk();
    vector< vector<long> > walks = model.SimulateWalks(num_walks, walk_length);

    SaveRandomWalks(walks, G);
    word2vec_train("random_walks.txt", "w2v.model", dimension);
    SaveEmbedding("w2v.model", "embedding.emb", G, dimension);
}
