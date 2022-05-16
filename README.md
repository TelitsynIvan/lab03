## Laboratory work III

Данная лабораторная работа посвещена изучению систем автоматизации сборки проекта на примере **CMake**

```sh
$ open https://cmake.org/
```

## Tasks

- [x] 1. Создать публичный репозиторий с названием **lab03** на сервисе **GitHub**
- [x] 2. Ознакомиться со ссылками учебного материала
- [x] 3. Выполнить инструкцию учебного материала
- [x] 4. Составить отчет и отправить ссылку личным сообщением в **Slack**


## Homework

Представьте, что вы стажер в компании "Formatter Inc.".
### Задание 1
Вам поручили перейти на систему автоматизированной сборки **CMake**.
Исходные файлы находятся в директории [formatter_lib](formatter_lib).
В этой директории находятся файлы для статической библиотеки *formatter*.
Создайте `CMakeList.txt` в директории [formatter_lib](formatter_lib),
с помощью которого можно будет собирать статическую библиотеку *formatter*.
 
cmake_minimum_required(VERSION 3.4) 
project(formatter_lib)              

set(CMAKE_CXX_STANDARD 11)          
set(CMAKE_CXX_STANDARD_REQUIRED ON) 

add_library(${PROJECT_NAME} STATIC formatter.cpp formatter.h) 

target_include_directories(${PROJECT_NAME} PUBLIC ${PROJECT_SOURSE_DIR})  


### Задание 2
У компании "Formatter Inc." есть перспективная библиотека,
которая является расширением предыдущей библиотеки. Т.к. вы уже овладели
навыком созданием `CMakeList.txt` для статической библиотеки *formatter*, ваш 
руководитель поручает заняться созданием `CMakeList.txt` для библиотеки subl
*formatter_ex*, которая в свою очередь использует библиотеку *formatter*.


cmake_minimum_required(VERSION 3.4)
project(formatter_ex_lib)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(SOURSES ${PROJECT_SOURSE_DIR} ../formatter_lib)


add_library(formatter_ex_lib STATIC formatter_ex.cpp formatter_ex.h)

add_subdirectory(../formatter_lib ${CMAKE_CURRENT_BINARY_DIR}/formatter_lib)
target_include_directories(formatter_ex_lib PUBLIC ${SOURSES}) 

target_link_libraries(formatter_ex_lib formatter_lib) 

### Задание 3
Конечно же ваша компания предоставляет примеры использования своих библиотек.
Чтобы продемонстрировать как работать с библиотекой *formatter_ex*,
вам необходимо создать два `CMakeList.txt` для двух простых приложений:
* *hello_world*, которое использует библиотеку *formatter_ex*;


cmake_minimum_required(VERSION 3.4)
project(hello_world)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(SOURSES ${PROJECT_SOURSE_DIR} ../formatter_ex_lib)

add_subdirectory(../formatter_ex_lib ${CMAKE_CURRENT_BINARY_DIR}/formatter_ex_lib)

target_include_directories(formatter_ex_lib PUBLIC ${SOURSES}) 
add_executable(example hello_world.cpp) 
target_link_libraries(example formatter_ex_lib)


Результат
% ./example 
-------------------------
hello, world!
-------------------------


* *solver*, приложение которое испольует статические библиотеки *formatter_ex* и *solver_lib*.

cmake_minimum_required(VERSION 3.4)
project(solver_lib)              

set(CMAKE_CXX_STANDARD 11)          
set(CMAKE_CXX_STANDARD_REQUIRED ON) 

add_library(solver_lib STATIC solver.cpp solver.h)

target_include_directories(solver_lib PUBLIC ${PROJECT_SOURSE_DIR})


CMakeLists.txt для сборки исполняемого файла


cmake_minimum_required(VERSION 3.4)
project(solver)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(SOURSES ${PROJECT_SOURSE_DIR} ../formatter_ex_lib ../solver_lib)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../solver_lib ${CMAKE_CURRENT_BINARY_DIR}/solver)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib ${CMAKE_CURRENT_BINARY_DIR}/formatter)

add_executable(example equation.cpp)
target_include_directories(example PUBLIC ${SOURSES})

target_link_libraries(example solver_lib formatter_ex_lib)


Тест
$ ./example 
10 2 -100
-------------------------
x1 = -3.263858
-------------------------
-------------------------
x2 = 3.063859
-------------------------

**Удачной стажировки!**

## Links
- [Основы сборки проектов на С/C++ при помощи CMake](https://eax.me/cmake/)
- [CMake Tutorial](http://neerc.ifmo.ru/wiki/index.php?title=CMake_Tutorial)
- [C++ Tutorial - make & CMake](https://www.bogotobogo.com/cplusplus/make.php)
- [Autotools](http://www.gnu.org/software/automake/manual/html_node/Autotools-Introduction.html)
- [CMake](https://cgold.readthedocs.io/en/latest/index.html)

```
Copyright (c) 2015-2021 The ISC Authors
```
