# Mapproxy-refresh-tiles
Refesh existing tiles in mapproxy cache by a shell script.

### Use Case
The option refresh_before implement in mapproxy-seeb dont call the source for just tiles present in cache but for all tiles in the coverage.  
I wanted to refresh just existing tiles, because the were called by clients but for non existant tiles, it's not necessary to add in cache, so this "quick and dirty" script do the job.  

### Requirements
* Linux OS  
* Mapproxy installed and operationnal  
* curl library installed  

### Mapproxy configuration
Add theses parameters in the yaml for each cache. Not in globals, they are not implemented.    
It's easier to make this scipt when tiles are stored as tms.  
* *type: file*  
* *directory_layout: tms*  
      
### Utilisation
By command line for ponctual action or can be add in the crontab.  
You must addapt the argument ctime as the number of days you want accept the tiles max aged in the cache.  
