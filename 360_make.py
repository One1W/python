#!/usr/bin/env python
f = open('360.txt','a+')
for x in xrange(1,9999999):
  intxt =  "%07d" % x
  in2txt = "%s \n" % intxt
  f.write(in2txt)
f.close()
