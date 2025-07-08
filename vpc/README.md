# AWS VPC - VIRTUAL PRIVATE CLOUD
In this session, we'll explore the core concepts of Amazon Web Services (AWS), focusing specifically on Virtual Private Clouds (VPCs). Our objective is to understand the fundamental components of VPC infrastructure, including subnets, gateways, and routing tables. Through practical demonstrations and interactive exercises, we'll navigate the AWS management console to deploy and manage these critical components effectively.

## Definition of Concepts
1. **IP Address:**
It's a unique identifier for devices on a network, like the Internet. There are two main types of IP Address:
- **Private IP Address:** They're IP addresses assigned by a router or DHCP servers within a network.
- **Public IP Address:** A public IP address is globally unique and is assigned by the Internet Service Provider (ISP) to a device connected to the internet.

2. **Gateway:**
Gateways are like doorways between different networks. They help data travel between your local network and other networks, like the internet.

3. **Route Table:**
A route table is like a map that helps data find its way around a network. Just like a map shows you the best routes to get from one place to another, a route table tells devices on a network how to send data packets to their destinations.

*In summary, gateways and route tables work together to facilitate the routing of network traffic between different networks. Gateways serve as the entry and exit points between networks, while route tables provide the necessary routing information to determine how data packets should be forwarded to their destinations.*

## PRACTICAL IMPLEMENTATION

**STEPS...**

1. **Setting Up a Virtual Private Cloud (VPC)**
![VPC Creation](./images/nav-vpc.PNG)

![VPC Creation](./images/Create-VPC.PNG)

![VPC Creation](./images/VPC-param.PNG)

![VPC Creation](./images/vpc-created.PNG)

2. **Configuring Subnets within the VPC**

![Subnet Creation](./images/nav-subnet.PNG)

![Subnet Creation](./images/subnet-param1.PNG)

![Subnet Creation](./images/subnet-param2.PNG)

![Subnet Creation](./images/subnet-created.PNG)

3. **Creating Internet Gateway and attaching it to VPC**

![Internet Gateway](./images/nav-internet-gateway.PNG)

![Internet Gateway](./images/internet-gw-param.PNG)

![Internet Gateway](./images/internet--gw-created.PNG)

![Internet Gateway](./images/attach-gw-vpc.PNG)

![Internet Gateway](./images/attach-gw-vpc-2.PNG)

![Internet Gateway](./images/gw-attached.PNG)

4. **Enabling Internet Connectivity with the Internet Gateway by setting up Routing tables**

![Route Table](./images/rout-tab-cr.PNG)

![Route Table](./images/rout-tab-param.PNG)

![Route Table](./images/subnet-associ.PNG)

![Route Table](./images/subnet-assoc-save.PNG)

![Route Table](./images/edit-routes.PNG)

![Route Table](./images/add-route.PNG)

![Route Table](./images/add-route.param.PNG)

![Route Table](./images/add-route-success.PNG)

5. **Enabling Outbound Internet Access through NAT Gateway**

![NAT Gateway](./images/nat-gateway.PNG)

![NAT Gateway](./images/nat-gateway-param.PNG)

![NAT Gateway](./images/nat-gateway-success.PNG)

![NAT Gateway](./images/nat-gateway-param.PNG)

![NAT Gateway](./images/nat-gateway-detail.PNG)

![NAT Gateway](./images/edit-routes-param-ngw.PNG)

![NAT Gateway](./images/subnet-assoc-ntgw.PNG)

![NAT Gateway](./images/subnet-assoc-ntgw-save.PNG)

![NAT Gateway](./images/subnet-assoc-ntgw-success.PNG)

6. **Establishing VPC Peering Connections**

![Creating Two VPCs](./images/requester-vpc.PNG)

![Creating Two VPCs](./images/accepter-vpc.PNG)

![Peering Connection](./images/peering-connection-pg.PNG)

![Peering Connection](./images/peering-conn-create.PNG)

![Peering Connection](./images/peering-conn-success.PNG)

![Peering Connection](./images/peering-action.PNG)

![Peering Connection](./images/peering-accept.PNG)

![Peering Connection](./images/main-route-table.PNG)

![Peering Connection](./images/routes-edit.PNG)

![Peering Connection](./images/add-route.PNG)

![Peering Connection](./images/requester-cidr.PNG)

![Peering Connection](./images/requester-edit-routes.PNG)

![Peering Connection](./images/accepter-cidr.PNG)

![Peering Connection](./images/requester-cidr-main-route.PNG)

![Peering Connection](./images/peering-conn-success.PNG)