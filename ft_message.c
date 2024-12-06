/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_message.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: myuen <myuen@student.42singapore.sg>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/10/26 14:13:00 by myuen             #+#    #+#             */
/*   Updated: 2024/10/26 14:13:07 by myuen            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_fractol.h"

void	ft_print_control(void)
{
	ft_printf("Controls:\n");
	ft_printf("  - Press 'C' to cycle through render colors\n");
	ft_printf("  - Press 'B' to cycle through base colors\n");
	ft_printf("  - Press SPACE to reset the view\n");
	ft_printf("  - Press 'Z' to zoom in\n");
	ft_printf("  - Press 'X' to zoom out\n");
	ft_printf("  - Use Arrow keys to pan\n");
	ft_printf("  - Left-click to center the view\n");
	ft_printf("  - Use mouse wheel to zoom in or out\n");
}

void	ft_print_usage(const char *program_name)
{
	ft_printf("Error: Not enough arguments.\n");
	ft_printf("*--------------42 Fractol---------------*\n");
	ft_printf("* Usage: %s [-m | -j | -t]   \t*\n", program_name);
	ft_printf("* Examples:                           \t*\n");
	ft_printf("*   Mandelbrot: %s -m        \t*\n", program_name);
	ft_printf("*   Julia Set : %s -j 0.4 0.6\t*\n", program_name);
	ft_printf("*---------------------------------------*\n");
}

void	ft_print_julia_suggestions(void)
{
	ft_printf("--- Suggested values for the Julia set ---\n");
	ft_printf("\tClassic Julia Set:\n");
	ft_printf("\t  -0.4	0.6\n");
	ft_printf("\tSwirling Spirals:\n");
	ft_printf("\t  0.355	0.355\n");
	ft_printf("\tSpider-like Pattern:\n");
	ft_printf("\t  -0.70176	0.3842\n");
	ft_printf("\tDragon-like Structures:\n");
	ft_printf("\t  -0.8	0.156\n");
	ft_printf("\tOrganic Coral Pattern:\n");
	ft_printf("\t  0.285	0.01\n");
	ft_printf("\tLightning Bolt Shapes:\n");
	ft_printf("\t  c = -0.4	0.6\n");
	ft_printf("\tBrain Coral Structure:\n");
	ft_printf("\t  -0.7269	0.1889\n");
	ft_printf("\tDouble Spiral:\n");
	ft_printf("\t  0.37	0.1\n");
	ft_printf("\tCircular Clusters:\n");
	ft_printf("\t  -0.8	0.156\n");
	ft_printf("--- ---------------------------------- ---\n\n");
}
