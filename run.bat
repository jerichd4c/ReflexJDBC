@echo off
echo --- Compiling ReflexJDBC ---
if not exist bin mkdir bin
javac -d bin src/main/java/reflexjdbc/core/*.java src/main/java/reflexjdbc/demo/*.java
if %errorlevel% neq 0 (
    echo Compilation failed!
    pause
    exit /b %errorlevel%
)

echo --- Running appDemo ---
java -cp "bin;postgresql-42.7.5.jar" reflexjdbc.demo.appDemo
if %errorlevel% neq 0 (
    echo Execution failed!
)
pause
