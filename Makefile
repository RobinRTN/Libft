LIBC = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c ft_isalpha.c \
       ft_isascii.c ft_isdigit.c ft_isprint.c ft_memchr.c \
       ft_memcmp.c ft_memcpy.c ft_memmove.c ft_memset.c ft_strchr.c \
       ft_strdup.c ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
       ft_strnstr.c ft_strrchr.c ft_tolower.c ft_toupper.c

ADDITIONAL = ft_itoa.c ft_putchar_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_putstr_fd.c \
             ft_split.c ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_substr.c ft_striteri.c

BONUS = ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c \
        ft_lstdelone.c ft_lstiter.c ft_lstlast.c \
        ft_lstmap.c ft_lstnew.c ft_lstsize.c

SRCS = $(LIBC) $(ADDITIONAL)
SRCSALL = $(LIBC) $(ADDITIONAL) $(BONUS)

OBJS := $(SRCS:.c=.o)
OBJSALL = $(SRCSALL:.c=.o)

NAME = libft.a
CC = cc
CFLAGS = -Wall -Werror -Wextra
RM = rm -f
AR = ar -rcs
RANLIB = ranlib
INC_DIR = .
CPPFLAGS = -I$(INC_DIR)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)
	$(RANLIB) $(NAME)

%.o: %.c
	$(CC) $(CPPFLAGS) $(CCFLAGS) -o $@ -c $<

bonus: $(OBJSALL)
	$(AR) $(NAME) $(OBJSALL)
	$(RANLIB) $(NAME)
clean:
	$(RM) $(OBJSALL)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus