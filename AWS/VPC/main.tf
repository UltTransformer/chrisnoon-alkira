# Provider

provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  region = "ap-southeast-2"
  alias = "ap-southeast-2"
}

provider "aws" {
  region = "ap-south-1"
  alias = "ap-south-1"
}

provider "aws" {
  region = "us-east-1"
  alias = "us-east-1"
}

provider "aws" {
  region = "eu-west-1"
  alias = "eu-west-1"
}

provider "aws" {
  region = "ap-east-1"
  alias = "ap-east-1"
}

provider "aws" {
  region = "us-west-1"
  alias = "us-west-1"
}

provider "aws" {
  region = "us-west-2"
  alias = "us-west-2"
}

provider "aws" {
  region = "eu-central-1"
  alias = "eu-central-1"
}

provider "aws" {
  region = "ap-northeast-1"
  alias = "ap-northeast-1"
}

provider "aws" {
  region = "us-east-2"
  alias = "us-east-2"
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "ap-southeast-1"
}


# Create Chris Noon's VPC
resource "aws_vpc" "chrisnoon-vpc" {
  cidr_block = "10.12.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "chrisnoon-vpc"
  }
}

# Create subnet 1
resource "aws_subnet" "chrisnoon-subnet1" {
  vpc_id                  = aws_vpc.chrisnoon-vpc.id
  cidr_block              = "10.12.1.0/24"
  availability_zone       = "eu-west-2a"
  tags = {
    Name = "chrisnoon-subnet1"
  }
}

# Create subnet 2
resource "aws_subnet" "chrisnoon-subnet2" {
  vpc_id                  = aws_vpc.chrisnoon-vpc.id
  cidr_block              = "10.12.2.0/24"
  availability_zone       = "eu-west-2b"
  tags = {
    Name = "chrisnoon-subnet2"
  }
}

#####

# Create Phil Oultram's VPC
resource "aws_vpc" "philoultram-vpc" {
  cidr_block = "10.22.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "philoultram-vpc"
  }
}

# Create subnet 1
resource "aws_subnet" "philoultram-subnet1" {
  vpc_id                  = aws_vpc.philoultram-vpc.id
  cidr_block              = "10.22.1.0/24"
  availability_zone       = "eu-west-2a"
  tags = {
    Name = "philoultram-subnet1"
  }
}

# Create subnet 2
resource "aws_subnet" "philoultram-subnet2" {
  vpc_id                  = aws_vpc.philoultram-vpc.id
  cidr_block              = "10.22.2.0/24"
  availability_zone       = "eu-west-2b"
  tags = {
    Name = "philoultram-subnet2"
  }
}

#####

# Create Ian Plummer's VPC
resource "aws_vpc" "ianplummer-vpc" {
  cidr_block = "10.32.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "ianplummer-vpc"
  }
}

# Create subnet 1
resource "aws_subnet" "ianplummer-subnet1" {
  vpc_id                  = aws_vpc.ianplummer-vpc.id
  cidr_block              = "10.32.1.0/24"
  availability_zone       = "eu-west-2a"
  tags = {
    Name = "ianplummer-subnet1"
  }
}

# Create subnet 2
resource "aws_subnet" "ianplummer-subnet2" {
  vpc_id                  = aws_vpc.ianplummer-vpc.id
  cidr_block              = "10.32.2.0/24"
  availability_zone       = "eu-west-2b"
  tags = {
    Name = "ianplummer-subnet2"
  }
}

########################################################
# Cusotmer Lab

# Student 1 (ap-southeast-2)
resource "aws_vpc" "sydney-vpc" {
  provider = aws.ap-southeast-2
  cidr_block = "10.100.1.0/24"
  tags = {
    Name = "sydney-vpc"
  }
}
resource "aws_subnet" "sydney-subnet1" {
  provider                = aws.ap-southeast-2
  vpc_id                  = aws_vpc.sydney-vpc.id
  cidr_block              = "10.100.1.0/25"
  availability_zone       = "ap-southeast-2a"
  tags = {
    Name = "sydney-subnet1"
  }
}
resource "aws_subnet" "sydney-subnet2" {
  vpc_id                  = aws_vpc.sydney-vpc.id
  cidr_block              = "10.100.1.128/25"
  availability_zone       = "ap-southeast-2b"
  tags = {
    Name = "sydney-subnet2"
  }
}

# # Student 2 (ap-south-1)
# resource "aws_vpc" "mumbai-vpc" {
#   provider = aws.ap-south-1
#   cidr_block = "10.100.2.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "mumbai-vpc"
#   }
# }
# resource "aws_subnet" "mumbai-subnet1" {
#   vpc_id                  = aws_vpc.mumbai-vpc.id
#   cidr_block              = "10.100.2.0/25"
#   availability_zone       = "ap-south-1a"
#   tags = {
#     Name = "mumbai-subnet1"
#   }
# }
# resource "aws_subnet" "mumbai-subnet2" {
#   vpc_id                  = aws_vpc.mumbai-vpc.id
#   cidr_block              = "10.100.2.128/25"
#   availability_zone       = "ap-south-1b"
#   tags = {
#     Name = "mumbai-subnet2"
#   }
# }

# # Student 3 (us-east-1)
# resource "aws_vpc" "virginia-vpc" {
#   provider = aws.us-east-1
#   cidr_block = "10.100.3.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "virginia-vpc"
#   }
# }
# resource "aws_subnet" "virginia-subnet1" {
#   vpc_id                  = aws_vpc.virginia-vpc.id
#   cidr_block              = "10.100.3.0/25"
#   availability_zone       = "us-east-1aa"
#   tags = {
#     Name = "virginia-subnet1"
#   }
# }
# resource "aws_subnet" "virginia-subnet2" {
#   vpc_id                  = aws_vpc.virginia-vpc.id
#   cidr_block              = "10.100.3.128/25"
#   availability_zone       = "us-east-1b"
#   tags = {
#     Name = "virginia-subnet2"
#   }
# }

# # Student 4 (eu-west-1)
# resource "aws_vpc" "ireland-vpc" {
#   provider = aws.eu-west-1
#   cidr_block = "10.100.4.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "ireland-vpc"
#   }
# }
# resource "aws_subnet" "ireland-subnet1" {
#   vpc_id                  = aws_vpc.ireland-vpc.id
#   cidr_block              = "10.100.4.0/25"
#   availability_zone       = "eu-west-1a"
#   tags = {
#     Name = "ireland-subnet1"
#   }
# }
# resource "aws_subnet" "ireland-subnet2" {
#   vpc_id                  = aws_vpc.ireland-vpc.id
#   cidr_block              = "10.100.4.128/25"
#   availability_zone       = "eu-west-1b"
#   tags = {
#     Name = "ireland-subnet2"
#   }
# }

# # Student 5 (ap-east-1)
# resource "aws_vpc" "hongkong-vpc" {
#   provider = aws.ap-east-1
#   cidr_block = "10.100.5.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "hongkong-vpc"
#   }
# }
# resource "aws_subnet" "hongkong-subnet1" {
#   vpc_id                  = aws_vpc.hongkong-vpc.id
#   cidr_block              = "10.100.5.0/25"
#   availability_zone       = "ap-east-1a"
#   tags = {
#     Name = "hongkong-subnet1"
#   }
# }
# resource "aws_subnet" "hongkong-subnet2" {
#   vpc_id                  = aws_vpc.hongkong-vpc.id
#   cidr_block              = "10.100.5.128/25"
#   availability_zone       = "ap-east-1b"
#   tags = {
#     Name = "hongkong-subnet2"
#   }
# }

# # Student 6 (us-west-1)
# resource "aws_vpc" "california-vpc" {
#   provider = aws.us-west-1
#   cidr_block = "10.100.6.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "california-vpc"
#   }
# }
# resource "aws_subnet" "california-subnet1" {
#   vpc_id                  = aws_vpc.california-vpc.id
#   cidr_block              = "10.100.6.0/25"
#   availability_zone       = "us-west-1a"
#   tags = {
#     Name = "california-subnet1"
#   }
# }
# resource "aws_subnet" "california-subnet2" {
#   vpc_id                  = aws_vpc.california-vpc.id
#   cidr_block              = "10.100.6.128/25"
#   availability_zone       = "us-west-1b"
#   tags = {
#     Name = "california-subnet2"
#   }
# }

# # Student 7 (us-west-2)
# resource "aws_vpc" "oregon-vpc" {
#   provider = aws.us-west-2
#   cidr_block = "10.100.7.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "oregon-vpc"
#   }
# }
# resource "aws_subnet" "oregon-subnet1" {
#   vpc_id                  = aws_vpc.oregon-vpc.id
#   cidr_block              = "10.100.7.0/25"
#   availability_zone       = "us-west-2a"
#   tags = {
#     Name = "oregon-subnet1"
#   }
# }
# resource "aws_subnet" "oregon-subnet2" {
#   vpc_id                  = aws_vpc.oregon-vpc.id
#   cidr_block              = "10.100.7.128/25"
#   availability_zone       = "us-west-2b"
#   tags = {
#     Name = "oregon-subnet2"
#   }
# }

# # Student 8 (eu-central-1)
# resource "aws_vpc" "frankfurt-vpc" {
#   provider = aws.eu-central-1
#   cidr_block = "10.100.8.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "frankfurt-vpc"
#   }
# }
# resource "aws_subnet" "frankfurt-subnet1" {
#   vpc_id                  = aws_vpc.frankfurt-vpc.id
#   cidr_block              = "10.100.8.0/25"
#   availability_zone       = "eu-central-1a"
#   tags = {
#     Name = "frankfurt-subnet1"
#   }
# }
# resource "aws_subnet" "frankfurt-subnet2" {
#   vpc_id                  = aws_vpc.frankfurt-vpc.id
#   cidr_block              = "10.100.8.128/25"
#   availability_zone       = "eu-central-1b"
#   tags = {
#     Name = "frankfurt-subnet2"
#   }
# }

# # Student 9 (ap-northeast-1)
# resource "aws_vpc" "tokyo-vpc" {
#   provider = aws.ap-northeast-1
#   cidr_block = "10.100.9.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "tokyo-vpc"
#   }
# }
# resource "aws_subnet" "tokyo-subnet1" {
#   vpc_id                  = aws_vpc.tokyo-vpc.id
#   cidr_block              = "10.100.9.0/25"
#   availability_zone       = "ap-northeast-1a"
#   tags = {
#     Name = "tokyo-subnet1"
#   }
# }
# resource "aws_subnet" "tokyo-subnet2" {
#   vpc_id                  = aws_vpc.tokyo-vpc.id
#   cidr_block              = "10.100.9.128/25"
#   availability_zone       = "ap-northeast-1b"
#   tags = {
#     Name = "tokyo-subnet2"
#   }
# }

# # Student 10 (us-east-2)
# resource "aws_vpc" "ohio-vpc" {
#   provider = aws.us-east-2
#   cidr_block = "10.100.10.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "ohio-vpc"
#   }
# }
# resource "aws_subnet" "ohio-subnet1" {
#   vpc_id                  = aws_vpc.ohio-vpc.id
#   cidr_block              = "10.100.10.0/25"
#   availability_zone       = "us-east-2a"
#   tags = {
#     Name = "ohio-subnet1"
#   }
# }
# resource "aws_subnet" "ohio-subnet2" {
#   vpc_id                  = aws_vpc.ohio-vpc.id
#   cidr_block              = "10.100.10.128/25"
#   availability_zone       = "us-east-2b"
#   tags = {
#     Name = "ohio-subnet2"
#   }
# }

# # Student X (ap-southeast-1)
# resource "aws_vpc" "singapore-vpc" {
#   provider = aws.ap-southeast-1
#   cidr_block = "10.100.11.0/24"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "singapore-vpc"
#   }
# }
# resource "aws_subnet" "singapore-subnet1" {
#   vpc_id                  = aws_vpc.singapore-vpc.id
#   cidr_block              = "10.100.11.0/25"
#   availability_zone       = "ap-southeast-1a"
#   tags = {
#     Name = "singapore-subnet1"
#   }
# }
# resource "aws_subnet" "singapore-subnet2" {
#   vpc_id                  = aws_vpc.singapore-vpc.id
#   cidr_block              = "10.100.11.128/25"
#   availability_zone       = "ap-southeast-1b"
#   tags = {
#     Name = "singapore-subnet2"
#   }
# }