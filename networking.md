# Networking in the Cloud (GPS402, Tuesday, 10/6/2015)

## VPC Best Practices

### Create VPC administrators
*Why:* Limit who can change it

### Plan VPC and subnet addressing
*Why:* VPC CIDR blocks cannot be changed. Planning this out can avoid recreation.

### Create a new route table for every subnet
*Why:* By asigning a unique routing per subnet, you can reduce your chance of any routing configuration mishaps.

### Take advantage of enhanced networking
*Why:* Can use SR-IOV, which uses hardware to process packets. Only available on some instance types.
  
