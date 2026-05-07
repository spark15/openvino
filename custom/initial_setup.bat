chdir ..

@if not exist build (
    mkdir build
)

chdir build

git submodule update --init --recursive