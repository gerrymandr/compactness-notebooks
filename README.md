# Description
This repository contains iPython Notebooks intended to measure the compactness of districts.

# Usage
#### To Build:
````bash
docker build -t mggg-compact .
````
#### To Run:
````bash
docker run -it -p 8888:8888 -v $PWD/Notebooks:/Notebooks -w="/Notebooks" mggg-compact
````

Then, connect to the link described in the output.
