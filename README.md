# Struc2vec on Heterogeneous Preference Embedding

## Preprocess

### Step by step

Before you compile this project, you have to get the submodules first.

```bash
git submodule init
git submodule update
```

After getting the submodules, you have to enter the repository `src/struc2vec`. Because here is another submodule `word2vec` for submodule `struc2vec`, you have to repeat the commands above to get the codes of this submodule.

Then, you have to enter the repository `src/word2vec` in `struc2vec` and compile this project with following commands.

```bash
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ../
make
```

After these procedures, you can go back to the root of this project and compile it.

```bash
make
```

Finally, you can use this project!!

### Shell Script for Compiling Whole Project

If you think that the steps above are complicated, you can run the shell script file `submodule_preprocessing.sh` so that you can easily compile the whole project.

```bash
sh submodule_preprocessing.sh
```

## Usage

It is almost the same as `HPE` in `smore` project. The most different is that there is another option `-use_structure`, which determines whether you should use the structural information or not. (Default is `false`.) So the options description are as follows:

```
Options Description:
    -train <string>
        Train the Network data
    -save <string>
        Save the representation data
    -dimensions <int>
        Dimension of vertex representation; default is 64
    -undirected <int>
        Whether the edge is undirected; default is 1
    -negative_samples <int>
        Number of negative examples; default is 5
    -window_size <int>
        Size of skip-gram window; default is 5
    -walk_times <int>
        Times of being staring vertex; default is 10
    -walk_steps <int>
        Step of random walk; default is 40
    -threads <int>
        Number of training threads; default is 1
    -alpha <float>
        Init learning rate; default is 0.025
    -use_structure <int>
        Whether using the structural information or not; default is 0
```

For example, if you have a user-item weighted-edges dataset named `barbell.edgelist`, you can use the following command to train the dataset with structural information.

```bash
./HPE -train barbell.edgelist -save embedding.embed -dimensions 64 -undirected 1 -use_structure 1
```
