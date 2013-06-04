# Docker django image builder

This is an experimental repo until docker and its builder is stable.

This work will probably be merged into https://github.com/23critters/23c-django-project-template/ later on.

## DRAFT DRAFT DRAFT DRAFT DRAFT DRAFT

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
