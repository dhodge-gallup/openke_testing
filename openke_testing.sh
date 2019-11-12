#!/usr/bin/env bash

for i in {1..5}
do
  traintimes=$((1000*$i))
  learning_rate=$(expr 0.001*$i | bc)
  number_batches=$((50*$i))

  python3 src/rdf_graph/map_queries.py -d data/ -m transh -o output/ -g glove/ -s sir -r fit -j $traintimes -a $learning_rate -b $number_batches > transh_${traintimes}_${learning_rate}_$number_batches.txt &
  python3 src/rdf_graph/map_queries.py -d data/ -m analogy -o output/ -g glove/ -s sir -r fit -j $traintimes -a $learning_rate -b $number_batches > analogy_${traintimes}_${learning_rate}_$number_batches.txt &
  python3 src/rdf_graph/map_queries.py -d data/ -m complex -o output/ -g glove/ -s sir -r fit -j $traintimes -a $learning_rate -b $number_batches > complex_${traintimes}_${learning_rate}_$number_batches.txt &
  python3 src/rdf_graph/map_queries.py -d data/ -m distmult -o output/ -g glove/ -s sir -r fit -j $traintimes -a $learning_rate -b $number_batches > distmult_${traintimes}_${learning_rate}_$number_batches.txt &
  python3 src/rdf_graph/map_queries.py -d data/ -m hole -o output/ -g glove/ -s sir -r fit -j $traintimes -a $learning_rate -b $number_batches > hole_${traintimes}_${learning_rate}_$number_batches.txt &
  python3 src/rdf_graph/map_queries.py -d data/ -m rescal -o output/ -g glove/ -s sir -r fit -j $traintimes -a $learning_rate -b $number_batches > rescal_${traintimes}_${learning_rate}_$number_batches.txt &
  python3 src/rdf_graph/map_queries.py -d data/ -m transd -o output/ -g glove/ -s sir -r fit -j $traintimes -a $learning_rate -b $number_batches > transd_${traintimes}_${learning_rate}_$number_batches.txt &
  python3 src/rdf_graph/map_queries.py -d data/ -m transe -o output/ -g glove/ -s sir -r fit -j $traintimes -a $learning_rate -b $number_batches > transe_${traintimes}_${learning_rate}_$number_batches.txt 
done