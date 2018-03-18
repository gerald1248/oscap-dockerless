# oscap-dockerless -- oscap wrapper for saved Docker images

## TL;DR
```
$ docker run -v `pwd`:/mnt/data -ti gerald1248/oscap-dockerless \
  oscap-dockerless /mnt/data
```
This invocation assumes that one or more saved Docker images are stored in the working directory. The output is written out alongside the input tarfiles.

Assuming there is an archive `centos7-unpatched.tar` in the working directory, the output would be as follows:
```
Scanning /mnt/data/centos7-unpatched.tar
Extracting layers to /tmp/centos7-unpatched.ieZN6p
Downloading: https://www.redhat.com/security/data/oval/com.redhat.rhsa-RHEL7.xml.bz2 ... ok
Written /mnt/data/centos7-unpatched-xccdf-report.html
Written /mnt/data/centos7-unpatched-xccdf-results.xml
```

## Build
```
$ git clone gerald1248/oscap-dockerless && cd oscap-dockerless
$ docker build -t oscap-dockerless .
$ docker run -ti oscap-dockerless oscap-dockerless --help
oscap-dockerless -- oscap wrapper for saved Docker images
Usage: oscap-dockerless [-h/--help] PATH_TO_TARFILES
e.g. oscap-dockerless /mnt/data
```

## Test
The tests require `shunit2`.
```
$ ./oscap-dockerless_test
```
