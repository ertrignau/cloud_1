# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    outputs.tf                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ertrigna <ertrigna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/06/08 11:40:01 by ertrigna          #+#    #+#              #
#    Updated: 2026/06/08 11:52:24 by ertrigna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

output "public_ip" {
	value = aws_instance.cloud_1.public_ip
}

output "db_ip" {
	value = aws_instance.db.public_ip
}
