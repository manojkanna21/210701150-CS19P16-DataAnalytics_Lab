REGISTER 'myudf.py' USING jython AS myfuncs;

data = LOAD 'input.txt' AS (line:chararray);
words = FOREACH data GENERATE myfuncs.hello_world() AS greeting;
DUMP words;
