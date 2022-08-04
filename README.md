![Failed to load image](img\logo.png "BrainC - Brainfuck with C/C++")

BrainC is a Enrich Programming Language that makes a ussless language usefull,
BrainC **combines Brainfuck and c togetter.** It makes Brainfuck usefull rather *printing text into the command prompt.*

How it works is it firslty compiles brainfuck into c code. it will then ask you to compile it and run. (**Brainfuck > C/C++ > Executeable**)


> **NOTE:** Also there is **NO automatic garbage** collector for BrainC so don't foget about memory leaks!

BrainC only compiles .bf files. any other files are denied to use.

## **How to compile .bf to .c to .exe**
___
1: Install BrainC, GCC and G++.

GCC is for compiling C programs and G++ is for comping C++ Programs.

2: Make the bf(c) file

3: Compile it using:

```
brainc -c <FileName> <OutputName>
```
> The output name will have the .exe extention added. You can overwrite it by adding a extention

> **NOTE: `BrainC Dose NOT Support compliing mutiple files. If you have to do, Disable Autocompile And use like a makefile to run those commands.`**


# Supportation
These are what brainc supports

Program Arguments
| Number | Argument | Requried Arguments | Description
| ------ | -------- | ------------------ | -----------
| 1      | -h       | None               | Shows all commands.
| 2      | -c       | Filename, Outputname| Compiles the files that ends with a spefic extention (Showned in the extention table) to c code.
| 3      | -a       | None               | About BrainC + Credits + Source code 


# Configuration
If you want to configure BrainC create a file. It is in the following list. (Sadly only 2 configurations).

| File Name | Description
| --------- | -----------
| brainc.cppmode | Dose the same but Compiles with the .cpp rather .c incase if you like C++.
| brainc.noautocompile | It only compiles the .bf file and not converting to a exe. This can be usefull incase if you use a diffirent Compiler OR have to compile mutiple files of your project.

# Crediting
If your a content creator you can credit me (NokoDev) if you want. its a nice optional option for it.

There is no license meaning you can do whatever you want with this.

# Modifing
If you want to edit the source code you only need to download **Choco**.

Afther Downloading Choco Run this command as administrator.
```
choco install lua
```
And you are ready to modify.

## Compiling
If you are done modifing BrainC or have to test it open `Compile.bat` This sould be instant and it will look like this when it is done compiling:

![Failed to load image](img\Compile_Terminal.png "BrainC - Brainfuck with C/C++")
And a explorer window will open where the files where created. Only 2 files are there:
```
brainc.exe - Main Program
brainfuck.exe - Modified Brainfuck Interpeter
```

And that is how you create a functional Modified BrainC.
