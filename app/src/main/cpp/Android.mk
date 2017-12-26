    #dir defined by the ndk
    LOCAL_PATH := $(call my-dir)

    #The CLEAR_VARS variable points to a special GNU Makefile that clears many LOCAL_XXX variables for you, such as LOCAL_MODULE, LOCAL_SRC_FILES, and LOCAL_STATIC_LIBRARIES.
    #Note that it does not clear LOCAL_PATH. This variable must retain its value because the system parses all build control files in a single GNU Make execution context
    #where all variables are global. You must (re-)declare this variable before describing each module.
    include $(CLEAR_VARS)

    #the LOCAL_MODULE variable stores the name of the module that you wish to build. Use this variable once per module in your application.
    LOCAL_MODULE := hellomk

    #The next line enumerates the source files, with spaces delimiting multiple files:
    LOCAL_SRC_FILES:=native-lib.cpp

    #tells the ndk to actually build a module
    #The BUILD_SHARED_LIBRARY variable points to a GNU Makefile script that collects all the information you defined in LOCAL_XXX variables since the most recent include. This script determines what to build, and how to do it
    #也可以选择静态库或者可执行文件
    include $(BUILD_SHARED_LIBRARY)

