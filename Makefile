##
## Makefile
##
##
## Started on  Wed May  4 10:07:58 2011 patrick
## Last update Sat May 14 11:01:57 2011 patrick
##

NAME 	= libclist.a


SRCS	= 	insertion_sort.c \
		list_append.c \
		list_construction.c \
		list_cut.c \
		list_foreach.c \
		list_get.c \
		list_insert.c \
		list_pop.c \
		list_remove.c \
		list_sort.c

CFLAGS  = -W -Wall
LFLAGS	=
OBJS 	= $(SRCS:.c=.o)


all	: $(NAME)


$(NAME)	: $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean	:
	$(RM) $(OBJS) *~


fclean	: clean
	$(RM) $(NAME)


re	: fclean all

.PHONY	: all clean fclean re