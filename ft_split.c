/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: robinrettien <robinrettien@student.42.f    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/06 12:17:26 by rrettien          #+#    #+#             */
/*   Updated: 2023/11/09 11:18:35 by robinrettie      ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	word_count(const char *str, char c)
{
	int	words;
	int	i;

	i = 0;
	words = 0;
	while (str[i])
	{
		if (str[i] != c && (str[i + 1] == c || str[i + 1] == '\0'))
			words++;
		i++;
	}
	return (words);
}

static void	write_word(const char *str, char *result, char c)
{
	int	i;

	i = 0;
	while (str[i] != c && str[i] != '\0')
	{
		result[i] = str[i];
		i++;
	}
	result[i] = '\0';
}

static void	write_split(char **result, const char *str, char c)
{
	int	word;
	int	i;
	int	j;

	word = 0;
	i = 0;
	while (str[i])
	{
		if (str[i] == c)
			i++;
		else
		{
			j = 0;
			while (str[i + j] != c && str[i + j] != '\0')
				j++;
			result[word] = malloc((j + 1) * sizeof(char));
			if (!result)
				return ;
			write_word(str + i, result[word], c);
			i += j;
			word++;
		}
	}
}

char	**ft_split(char const *s, char c)
{
	char	**result;
	int		size;

	if (!s)
		return (NULL);
	size = word_count(s, c);
	result = malloc((size + 1) * sizeof(char *));
	if (!result)
		return (NULL);
	result[size] = NULL;
	write_split(result, s, c);
	return (result);
}
