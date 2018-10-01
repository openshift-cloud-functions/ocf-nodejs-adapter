

`make`

Then in your function project:

`s2i build . openshift-cloud-functions/s2i-ocf-nodejs:latest myfunc`

Then

`docker run -p8080:8080 myfunc`
