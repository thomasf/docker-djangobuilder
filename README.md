# Docker django image builder

WIP

## DRAFT DRAFT DRAFT Django app workflow DRAFT DRAFT DRAFT

build base image

    ./build.sh 
    
    ...


```docker run -dns 8.8.8.8 -i -t django:12.10 /bin/bash``` and...

    app init "myappid"
        
        
(docker commit ... myappid)
    
    
    app clone git@giturl
    app pip -r requirements.txt
    app manage collectstatic
   
   
and then.. ```docker commit ... myappid ```


```docker run -p 8000 app run```
