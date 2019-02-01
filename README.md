# OLTPBench

Forked from and inspired heavily by https://github.com/oltpbenchmark/oltpbench and [OLTP-Bench: An extensible testbed for benchmarking relational databases](http://www.vldb.org/pvldb/vol7/p277-difallah.pdf) D. E. Difallah, A. Pavlo, C. Curino, and P. Cudre-Mauroux. In VLDB 2014.


## Modifcations from Original
* Build with Maven
* All non `.java` files moved to `resources` directory
* lots of file renaming for clarity
* moved all logging from Log4J directly to SLF4J
* resolved numerous resource leaks
* removed considerable amount of dead code, configuration, detritus and other nasty accumulations
* no commits on insert


## Known Issues

* TPC-H references files and diretory that don't exist.  not clear what they should be.  see https://relational.fit.cvut.cz/dataset/TPCH
* TPC-DS doesnt have a sample config and would references files and diretory that don't exist.  not clear what they should be.  see TPCH references files and diretory that don't exist.  not clear what they should be.  see https://relational.fit.cvut.cz/dataset/TPCH
* having difficult loading `seats`
* no sample config for `hyadapt`
* linkbench not started

## Supported Benchmarks

* [AuctionMark](http://hstore.cs.brown.edu/projects/auctionmark/)
* [CH-benCHmark](http://www-db.in.tum.de/research/projects/CHbenCHmark/?lang=en), mixed workload based on `chbenchmark` and `tpcc`
* Epinions.com
* hyadapt
* [LinkBench](http://people.cs.uchicago.edu/~tga/pubs/sigmod-linkbench-2013.pdf)
* NoOp
* Synthetic Resource Stresser 
* SEATS
* [SIBench](http://sydney.edu.au/engineering/it/~fekete/teaching/serializableSI-Fekete.pdf) (Snapshot Isolation)
* [SmallBank](http://ses.library.usyd.edu.au/bitstream/2123/5353/1/michael-cahill-2009-thesis.pdf)
* [TATP](http://tatpbenchmark.sourceforge.net/)
* [TPC-C](http://www.tpc.org/tpcc/)
* TPC-DS
* TPC-H
* Twitter
* [Voter](https://github.com/VoltDB/voltdb/tree/master/examples/voter) (Japanese "American Idol")
* Wikipedia
* [YCSB](https://github.com/brianfrankcooper/YCSB)

