/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Class.cpp                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: %USR% <%USR%@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/08 14:29:26 by %USR%          #+#    #+#             */
/*   Updated: 2024/09/08 14:43:58 by %USR%         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <%Class%.hpp>

%Class%::%Class%() {
    
}
%Class%::~%Class%() {
	
}
%Class%::%Class%(const %Class% &copy) {
	if (&copy != this)
        *this = copy;
}
%Class%&	%Class%::operator=(const %Class% &copy) {
	if (&copy != this)
#error       ; // INIT YOUT VARIABLES
    return *this;
}