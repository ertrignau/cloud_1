# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    security.tf                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ertrigna <ertrigna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/06/08 14:07:41 by ertrigna          #+#    #+#              #
#    Updated: 2026/06/08 14:11:46 by ertrigna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

resource "aws_security_group" "web_sg" {
	name = "web_sg"

	ingress {
		from_port	= 22
		to_port		= 22
		protocol	= "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	ingress {
		from_port 	= 80
		to_port		= 80
		protocol	= "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	ingress {
		from_port	= 443
		to_port		= 443
		protocol	= "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}

	egress {
		from_port	= 0
		to_port		= 0
		protocol	= "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
}

resource "aws_security_group" "db_sg" {
	name = "db_sg"

	ingress {
		from_port	= 3306
		to_port		= 3306
		protocol	= "tcp"
		security_groups	= [aws_security_group.web_sg.id]
	}

	egress {
		from_port	= 0
		to_port		= 0
		protocol	= "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
}
