# AUTO SCALING WITH ALB USING LAINCH TEMPLATE

## Launch Template Details
- Name: `my-launch-template`
- AMI: Amazon Linux 2
- Instance Type: `t2.micro`
- User Data: Apache Web Server setup
![launch template dashboard](./images/launch-template.PNG)


## Auto Scaling Group
- Name: `my-asg`
- Desired Capacity: 1
- Min: 1, Max: 4
- Subnets: Subnet-A, Subnet-B (across AZs)
![Auto scaling group](./images/auto-scaling.PNG)

![Activity History](./images/activity-history.PNG)

## Scaling Policy
- Policy Name: scaling-on-cpu
- Policy Type: Target Tracking
- Metric: Average CPU Utilization
- Target: 50%
![Scaling policy](./images/scalinng-policy.PNG)

## Load Balancer
- ALB Name: `my-alb`
- Listener: Port 80
- Target Group: Instance-based, HTTP
![Load Balancer](./images/load-balancer.PNG)

## Testing Auto Scaling
- Tool: `stress`
- Command: `stress -c 4`
- Outcome:
  - Increased CPU triggered scale-out
  - Decrease in CPU triggered scale-in
![test terminal](./images/test-terminal.PNG)

## Reflections
- Learned the benefits of decoupling compute from traffic with ALB.
- Auto Scaling provides resilience, cost savings, and performance optimization.
- Launch Templates offer reusability and consistent configurations.