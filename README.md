# Libft
Very own C function library

## Overview

`Libft` is my first project at École 42, where I recreated several standard C library functions along with additional utility functions that I found useful, especially for handling chained lists. This library serves as a foundational building block for my future projects at 42.

## Features

### Standard Library Functions

In this section, I've recreated several standard C library functions to understand their workings deeply and to build my own library that I can use throughout my education at 42. These functions include:

- `ft_strlen` - calculate the length of a string.
- `ft_strdup` - duplicate a string.
- `ft_strcpy` - copy strings.
- `ft_strncpy` - copy fixed-size string.
- `ft_strcat` - concatenate strings.
- `ft_strncat` - concatenate fixed-size string.
- `ft_strlcat` - size-bounded string concatenation.
- `ft_strchr` - locate character in string.
- `ft_strrchr` - locate character in string from end.
- `ft_strstr` - locate a substring in a string.
- `ft_strcmp` - compare two strings.
- `ft_strncmp` - compare part of two strings.
- ... _[Other string manipulation functions]_

### Memory Manipulation

- `ft_memset` - fill memory with a constant byte.
- `ft_memcpy` - copy memory area.
- `ft_memccpy` - copy memory area until a character is encountered.
- `ft_memmove` - copy memory area with overlap handling.
- `ft_memchr` - scan memory for a character.
- `ft_memcmp` - compare memory areas.
- ... _[Other memory functions]_

### Chained List Utilities

These functions are specifically designed for handling chained lists, a data structure often used in programming:

- `ft_lstnew` - create a new list element.
- `ft_lstdelone` - delete one element of a list.
- `ft_lstdel` - delete a sequence of list elements.
- `ft_lstadd` - add a new element at the beginning of a list.
- `ft_lstiter` - apply a function to each element of a list.
- `ft_lstmap` - create a new list resulting from the successive applications of a function to each element.
- ... _[Other list functions]_

## Usage

To use this library in your C projects, simply include the relevant header files. Here's an example of using one of the functions:

#include "libft.h"


