@echo off

@if not exist "../build" (
    echo Do initial setup first

    exit /b 1
)

chdir ../build

cmake .. ^
   -DCMAKE_BUILD_TYPE=Release ^
   -DSELECTIVE_BUILD=COLLECT ^
   -DENABLE_PROFILING_ITT=FULL

cmake --build . --config Release -j8