ROracle2
========

Fork of the ROracle package with few extra features.

See the parent project for licensing and copyright notes as well: [ROracle](http://cran.r-project.org/web/packages/ROracle/index.html).

The project has been forked from version 1.1-10

Original authors: Denis Mukhin, David A. James and Jake Luciani

Extra features added so far:
- Multiple query support in dbSendQuery
- Multiple query support in dbGetQuery
- dbWriteTable and dbRemoveTable now have parameter schema to handle
  schemes properly
- dbWriteTable to use names in the Insert statement (allows user to omit
  auto-generated fields)
