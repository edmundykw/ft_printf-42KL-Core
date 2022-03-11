/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ekeen-wy <ekeen-wy@student.42kl.edu.my>    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/03/08 16:43:01 by ekeen-wy          #+#    #+#             */
/*   Updated: 2022/03/11 15:19:06 by ekeen-wy         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdlib.h>
# include <limits.h>
# include <stdarg.h>
# include <stdint.h>
# include "libft/libft.h"

size_t	ft_printf(const char *str, ...);
size_t	ft_print_c(va_list args);
size_t	ft_print_s(va_list args);
size_t	ft_print_x_lower(va_list args);
size_t	ft_print_x_upper(va_list args);
size_t	ft_print_p(va_list args);
size_t	ft_print_d(va_list args);
size_t	ft_print_u(va_list args);
size_t	allocate_size(unsigned int num);
size_t	convert_to_hex(unsigned int num, const char arr[]);
size_t	ft_putstr(char *s);
#endif