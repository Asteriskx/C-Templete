require 'fileutils'
require 'pathname'

module FileHeaders
    def file_headers
        puts "/*****************************************************/"
        puts "/* Created by PrgTemplete Ver.1.0.0 from Asterisk.   */"
        puts "/*****************************************************/"
        puts "/* File name :                                       */"
        puts "/* Rev :                                             */"
        puts "/*****************************************************/"
        print("\n")
    end
end

module FileIncludes
    def file_includes
        puts "/*****************************************************/"
        puts "/* include                                           */"
        puts "/*****************************************************/"
        puts "#include <stdio.h>"
        puts "#include <stdlib.h>"
        print("\n")
    end
end

module FileDefines
    def file_defines
        puts "/*****************************************************/"
        puts "/* Define                                            */"
        puts "/*****************************************************/"
        print("\n")
    end
end

module FileProto
    def file_proto
        puts "/*****************************************************/"
        puts "/* Prototype                                         */"
        puts "/*****************************************************/"
        print("\n")
    end
end

module FileStatic
    def file_static
        puts "/*****************************************************/"
        puts "/* Static Value                                      */"
        puts "/*****************************************************/"
        print("\n")
    end
end

module FileMain
    def file_main
        puts "/*****************************************************/"
        puts "/* Module name :                                     */"
        puts "/* Rev :                                             */"
        puts "/* Return Value :                                    */"
        puts "/*****************************************************/"
        puts "int main( int argc, char **argv ) {"
        puts "    return ( EXIT_SUCCESS );"
        puts "}"
        print("\n")
    end
end

module FileEof
    def file_eof
        puts "/*****************************************************/"
        puts "/* EOF                                               */"
        puts "/*****************************************************/"
    end
end

class Execute
    include FileHeaders
    include FileIncludes
    include FileDefines
    include FileProto
    include FileStatic
    include FileMain
    include FileEof
end

header       = Execute.new
include_file = Execute.new
define       = Execute.new
proto        = Execute.new
static       = Execute.new
main         = Execute.new
eof          = Execute.new

header.file_headers()
include_file.file_includes()
define.file_defines()
proto.file_proto()
static.file_static()
main.file_main()
eof.file_eof()








