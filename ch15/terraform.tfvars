#
# Common variables
#
region="uk-london-1"
compartment_ocid="ocid1.compartment.oc1..aaaaaaaaucqsaxg3ejrnddtalaqdt342ic6c4wknz4vn7idnjq2ydse5j4xq"

#
# Used in 01-vcn.tf
#
vcn_cidr="10.200.0.0/21"
vcn_display_name="VirtualCloudNetwork_Book"
vcn_dns_label="vcnbook1"
internetgateway1_display_name="InternetGateway01_VirtualCloudNetwork_Book"

#
# Used in 02-security_list.tf
#
security_list1_display_name="SecurityList01_VirtualCloudNetwork_Book"
security_list1_egress_security_rules_description="Allow egress on all TCP"
security_list1_ingress_security_rules_22_description="Allow ingress connection from Internet on port 22"
security_list1_ingress_security_rules_80_description="Allow ingress connection from Internet on port 80"

#
# Used in 03-route_rule.tf
#
subnet1_route_table_display_name="RouteTable01_VirtualCloudNetwork_Book"
route_rule1_internet_gateway_description="Route Rule to provide Internal access to the subnet"

#
# Used in 04-subnets.tf
#
subnet1_cidr="10.200.0.0/24"
subnet1_display_name="PublicSubnet1_Regional"
subnet1_dns_label="pubsub1reg"

#
# Used in 05-compute.tf
#
instance01_name="AppServerBook"
instance01_shape="VM.Standard.E2.1.Micro"
ssh_public_key="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6wlUD08oyvzdmiVq2cMxu46knzZnF7t00IYXi7br5QoqnQkGsUtcC19uQfM4N9LvzOWy1H4Z2/Erl9B4z1i8VDGhFa6APV6G1jTq5+h47KtqTG1jC4nVzniohvelTJ9OdpKJwl0YUZ8AYgMCAyHiomISDC638UrnP/helUaIj5NrLhDuTElDEBbfTGqU6qb51vTrgHnsEqTJRGMtQdUPjN0+nOO1FCzoWZpQTvzacSm9K9oyYC0q/lMq5yEKhxqbZgk8XTEw8vsvVtlzrNDQ0ajb830eOMcvgNxodpzz1B8IgXg05DFXnzaM3DGkbSfQ3DUKMlHhn1cX2TV9WGqxx lucdemanche@MacBook-Pro-de-Luc.local"
instance01_script="/root/Terraform/instance_bootstrap.sh"

#
# Used in 06-freeatp.tf
#
adb_name="autonomous02"
adb_display_name="My Second ADB"
adb_password="pt3xG*xAB_TX"
