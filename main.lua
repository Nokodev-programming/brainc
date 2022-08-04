local command = arg[1]

local function sendhelp()
    print("Usage:")
    print("  brainc [command]")
    print("")
    print("Commands:")
    print("  -h             | Show this help")
    print("  -c             | Compiles the selected file (Only 1) and runs it")
    print("  -a             | About BrainC. (Including About Brainf**k and C)")
    print("")
    print("Compile Examples:")
    print("  brainc -c time.bf currenttime")
end

local function sendabout()
    print("Version 1.0.0\n\nBrainC is a programming language that makes brainfuck somting usefull by making programs. How it compiles is that it firsly converts brainfuck code into C or C++ Code, then it compiles to a executable and thats is how it compiles.\n\nThis Programming language role is a custom one made by NokoDev: 'Enrich Programming Language' (Short word: Enlang). Here is a example: Brainfuck is a language not designed for software. but BrainC makes it designed for software for brainfuck.")
end



local function compile(input, output)
    local CurDir = io.popen"cd":read'*l'
    local selectedfile = CurDir.."\\"..input

    print("[BrainC] [INFO]: Validating file location")

    local file = io.open(selectedfile, "r")

    if file == nil then
        print("[BrainC] [ERROR]: File not found")
        return
    end
    
    print("[BrainC] [SUCCESS]: Validated file: "..selectedfile.."")

    if io.open("brainc.cppmode", "r") == nil then
        os.execute("brainfuck "..selectedfile.." > "..selectedfile..".c")
        print("[BrainC] [SUCCESS]: Successfully compiled .bf file with extention of .c")
    else
        os.execute("brainfuck "..selectedfile.." > "..selectedfile..".cpp")
        print("[BrainC] [SUCCESS]: Successfully compiled .bf file with extention of .cpp")
    end
    
    if io.open("brainc.noautocompile", "r") == nil then
        print("[BrainC] [INFO]: Compiling C/C++ Code with GCC")
        if io.open("brainc.cppmode", "r") == nil then
            os.execute("mkdir bin && gcc "..selectedfile..".c -o "..CurDir.."\\bin\\"..output)
        else
            os.execute("mkdir bin && g++ "..selectedfile..".cpp -o "..CurDir.."\\bin\\"..output)
        end
        print("[BrainC] [SUCCESS]: Compiled C/C++ Code. Closing Program")
    else
        print("[BrainC] [INFO]: Detected file 'brainc.noautocompile'. Canceled GCC Compiling.")
    end
end

if arg[1] == "-a" then
    sendabout()
    return
elseif arg[1] == "-c" then
    if arg[2] == nil then
        print("[BrainC] [ERROR]: Please specify a file to compile\n")
        return
    elseif not arg[3] then
        print("[BrainC] [ERROR]: Please specify a file to output\n")
        return
    elseif arg[4] then
        print("[BrainC] [ERROR]: Too many arguments\n")
        return
    end

    compile(arg[2], arg[3])
elseif arg[1] == "-h" then
    sendhelp()
    return
else
    print("[BrainC] [ERROR]: Invalid command\n Type brainc -h for help")
    return
end