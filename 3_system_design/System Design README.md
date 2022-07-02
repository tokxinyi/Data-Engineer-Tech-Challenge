# Cloud Load Balancing

To distribute the incoming network traffic to the backend servers to maximise speed and capacity utilization and ensure that no server is overloaded, which can affects performance.

The load balancer can also redirect the traffic to other online servers if one goes down, ensuring high availability.

  

# Cloud Storage

- To hold any codes or files that Kafka containers requires.
- Able to act as a archival storage

	- There are different storage class for different use cases, in this case, the code and/or configuration files can be stored using **Standard Storage**, which is meant for 'hot' data, where the data is accessed frequently
	
	- We can also store the processed images into Cloud Storage using the **Nearline Storage**, which is used for backup usually and will cost cheaper as compared to Standard Storage

  

# Cloud Run Container

Kafka will be running in the container. It ensures that the environment is consistent. Updating the environment will be easier because it is just deploying new containers using the updated images, as compared to traditional ways of bringing the system down to patch it.

  

# Cloud Firestore

To store the original images more efficiently. It is also scalable and allow users to query the images from the databases for any analysis needed.
  

# Pros
- Scalable
- This serverless design is potentially cheaper in comparison to the license fees and hardware costs
- Easier to maintain
- Support: Easier to collate all the problems to one company and get support

# Cons
- Have no control over the availability if the cloud platform went down


# Assumptions

1. No cost budget