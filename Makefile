# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: myuen <myuen@student.42singapore.sg>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/24 16:22:28 by myuen             #+#    #+#              #
#    Updated: 2024/10/24 16:22:30 by myuen            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= fractol
BONUS_NAME	= fractol_bonus
CC		= cc
CFLAGS		= -Wall -Wextra -Werror -g

# Directories
LIBFT_DIR	= ./libft
PRINTF_DIR	= ./ft_printf
GNL_DIR		= ./ft_gnl
MLX_DIR		= ./mlx_linux
OBJ_DIR		= ./obj

# Library Names
LIBFT		= $(LIBFT_DIR)/libft.a
PRINTF		= $(PRINTF_DIR)/libftprintf.a
GNL		= $(GNL_DIR)/get_next_line.o $(GNL_DIR)/get_next_line_utils.o
MLX		= $(MLX_DIR)/libmlx.a

# Include paths
INCLUDES	= -I$(LIBFT_DIR) -I$(PRINTF_DIR) -I$(GNL_DIR) -I$(MLX_DIR)

# Libraries
LIBS		= -L$(LIBFT_DIR) -lft -L$(PRINTF_DIR) -lftprintf -L$(MLX_DIR) -lmlx -lXext -lX11 -lm

# Source files
SRCS		= ft_fractol.c ft_events.c ft_draw.c ft_zoom.c \
				ft_fractol_utils.c ft_pan.c ft_color.c ft_message.c\
				ft_mandelbrot.c ft_julia.c ft_complex.c ft_atof.c \
				ft_process_fractal.c ft_tricorn.c
				
BONUS_SRCS	= ft_fractol_bonus.c ft_events.c ft_draw.c ft_zoom.c \
				ft_fractol_utils.c ft_pan.c ft_color.c ft_message.c\
				ft_mandelbrot.c ft_julia.c ft_complex.c ft_atof.c \
				ft_process_fractal.c ft_tricorn.c
			
OBJS		= $(addprefix $(OBJ_DIR)/, $(SRCS:.c=.o))
BONUS_OBJS	= $(addprefix $(OBJ_DIR)/, $(BONUS_SRCS:.c=.o))

# Header files
HEADERS		= ft_fractol.h

all: $(NAME)

$(NAME): $(LIBFT) $(PRINTF) $(GNL) $(MLX) $(OBJ_DIR) $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o $(NAME)
	
bonus: $(BONUS_NAME)

$(BONUS_NAME): $(LIBFT) $(PRINTF) $(GNL) $(MLX) $(OBJ_DIR) $(BONUS_OBJS)
	$(CC) $(CFLAGS) $(BONUS_OBJS) $(LIBS) -o $(BONUS_NAME)

$(LIBFT):
	$(MAKE) -C $(LIBFT_DIR)

$(PRINTF):
	$(MAKE) -C $(PRINTF_DIR)

$(GNL):
	$(MAKE) -C $(GNL_DIR)

$(MLX):
	$(MAKE) -C $(MLX_DIR)

$(OBJ_DIR):
	@mkdir -p $(OBJ_DIR)

$(OBJ_DIR)/%.o: %.c $(HEADERS) | $(OBJ_DIR)
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	$(MAKE) -C $(LIBFT_DIR) clean
	$(MAKE) -C $(PRINTF_DIR) clean
	$(MAKE) -C $(GNL_DIR) clean
	$(MAKE) -C $(MLX_DIR) clean
	rm -rf $(OBJ_DIR)

fclean: clean
	$(MAKE) -C $(LIBFT_DIR) fclean
	$(MAKE) -C $(PRINTF_DIR) fclean
	$(MAKE) -C $(GNL_DIR) fclean
	$(MAKE) -C $(MLX_DIR) clean
	rm -f $(NAME) $(BONUS_NAME)

re: fclean all

.PHONY: all clean fclean re bonus
