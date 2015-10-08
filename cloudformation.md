# CloudFormation

## Notes

### Designer
There's a visual designer that you can layout your infrastructure that you want to configure. You can configure any of the services that CloudFormation supports.

If you're not familiar with the properties that are required to be set, right-clicking on the resource will present a help icon that will take you directly to the documentation. This is also helpful to know the required fields, etc.

### Budgets
Since CloudFormation creates tags for your stacks, you can create notifications / budget limits for your various tasks as well as to use the cost explorer to see how much it may cost you.

### Extending (with stack events)
Lambda backed custom resources? Look this up. Could potentially use this to lookup other resources?

### Re-Using Templates Across AWS Regions
* Consider environmental or regional differences
  * EC2 image ids
  * VPC environment or "classic" environment
  * available instance types
  * IAM policy principals
  * endpoitn names

Use "pseudo-parameters" to retrieve environmental data
  * Account Id
  * Region
  * Stack Name and Id

Use mappings to define variables
  * single place for configuration
  * reusable within the template

Use conditionals to customize resources and parameters

