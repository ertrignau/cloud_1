# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    main.tf                                            :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ertrigna <ertrigna@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2026/06/08 11:39:59 by ertrigna          #+#    #+#              #
#    Updated: 2026/06/08 11:53:16 by ertrigna         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

resource "aws_instance" "web" {
	ami				= "ami-0c6ebbd55ab05f070" # Ubuntu 22.04 (Paris)
	instance_type	= "t2.micro"

	key_name 		= var.key_name
	
	tags = {
		Name = "web-vm"
	}
}

resource "aws_instance" "db" {
	ami				= "ami-0c6ebbd55ab05f070"
	instance_type	= "t2.micro"
	
	key_name		= var.key_name

	tags = {
		Name = "db-vm"
	}
}
