# SORTMERG
*For demo purposes. Not suitable for production use*

Sortmerg is a simple COBOL application which reads input from three files, merges their contents, and writes an output containing one sorted list. It is designed to run on a z/OS mainframe.

## Source Code

The source code is contained in a single file, `sort.cbl`, which is written in COBOL. It consists of two main operations:

1. Read data from three files and merge them into one in-memory list
2. Sort the list and write the result to an output file

## JCL Jobs

The JCL jobs consist of three parts:

1. `compile.jcl` to invoke the Enterprise COBOL compiler to create an object from your source.
2. `bind.jcl` to invoke the Binder to create an executable from your object file. 
3. `run.jcl` to execute the program.

The compilation of the source code will produce an executable which can then be run on the mainframe. 

## Files

Sample input files:

1. `file1` - 2023 electric vehicles. 
2. `file2` - 2023 hybrid vehicles.
3. `file3` - 2023 SUV vehicles.

## Usage

To use the application, simply copy the source code and the JCL jobs onto the mainframe, execute the JCL jobs, and then run the executable. The executable will then read the input files, merge their contents into one list, sort the list, and write the result to an output file.
