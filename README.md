# plantation
the following steps are to highlight on the workflow involved the process of removing the ground surface from a point cloud file containing a portion of a palm oil plantation map

### Original Pointcloud
A bird's eye view of the original pointcloud is illustrated ( full view)
![original_pcd](https://github.com/tshiamor/plantation/assets/56265291/749709b1-18fb-4afd-963a-64d24a145ccf)


second view angle:
![original-3](https://github.com/tshiamor/plantation/assets/56265291/bb0c5005-8020-4a1b-b417-23af951ee04b)


as seen pointcloud objects are not easy to view
![original-2](https://github.com/tshiamor/plantation/assets/56265291/336baa11-e2d1-4145-a39b-ccc43aa8724a)


### crop original pointcloud and work on a focuced section
This first section is to allow for easier viewing of a sub-sction as the map is quite large. The method used for cropping is a cropBox filter feature provided by pcl.This takes two bounds (defined by  Eigen::Vector4f) which is a 1 by 4, row matix  or vector which is used to determine the lower and upper bounds of the cube/cuboid to be cropped from the original pointcloud.   


 <!--- ![image](https://github.com/tshiamor/plantation/assets/56265291/c5216657-8c62-4262-804f-1cdd967b5255 ) --->
<img src="https://github.com/tshiamor/plantation/assets/56265291/c5216657-8c62-4262-804f-1cdd967b5255" width="1000" height="800">


<!--- ![image](https://github.com/tshiamor/plantation/assets/56265291/11983cff-d15f-4314-80b4-7f27ebb206bf) --->
<img src="https://github.com/tshiamor/plantation/assets/56265291/11983cff-d15f-4314-80b4-7f27ebb206bf" width="1000" height="800">





### identify ground using a pmf filter, segment and separate into ground and objects 

when using the pmf filter it is worth noting thee following parameters:

- setMaxWindowSize ( which is the size of the sliding window)
- setSlope ( amount of slope to cater for, elevation threshold )
- setInitialDistance (initial starting distance that separates ground from objects of interest height)
- setMaxDistance (maximum expected height )

results from the pmf are shown whereby the green is the ground whilst the grey are the objects i.e trees etc above the surface
![ground and trees](https://github.com/tshiamor/plantation/assets/56265291/c0283ce0-b81a-4d8f-aa9a-f34b10a24153)

close up view of the ground and trees

![closeup_ground_n_trees](https://github.com/tshiamor/plantation/assets/56265291/c8073053-e3f5-438e-93d5-38481b8728ac)


### apply filtering using statistical outlier reducer to reduce noisy data on objects detected

non ground before filtering

![image](https://github.com/tshiamor/plantation/assets/56265291/415a3d60-2df3-4340-91f9-59c4555f4201)


view one of objects( non ground)
![image](https://github.com/tshiamor/plantation/assets/56265291/6b22b443-235f-4cd1-ae30-a48546d1da0b) 
view two of objects( non ground)
![image](https://github.com/tshiamor/plantation/assets/56265291/4fbeedbf-e132-4f1c-b54f-e01246e3bfcf)

view three of objects( non ground)
![image](https://github.com/tshiamor/plantation/assets/56265291/d4c8ccaf-b86d-42f1-b10e-283eca7a2498)

view of the segmented ground and objects

![combine_ground_filtered_objects](https://github.com/tshiamor/plantation/assets/56265291/5534a985-dc4a-470f-876b-3e0980fbb021)



## build instructions:

clone repo and build
```
git clone https://github.com/tshiamor/plantation.git
cd plantation
mkdir build && cd build
cmake ..
make
```

copy the original pointcloud(plantation.pcd) to the build directory

### to crop the initial pointcloud and view
```
$ ./plantation_trim 
$ pcl_viewer plantation_reduced.pcd  
```
### to apply the pmf filtering
  ```
  $ ./plantation_pmf
  ```
the files plantation_reduced_object_inliers.pcd and plantation_reduced_ground.pcd shoulld be created.

### to view results:

- just the objects:

```
$ pcl_viewer plantation_reduced_object_inliers.pcd 
```

- both objects and ground together:

```
$ pcl_viewer plantation_reduced_object_inliers.pcd plantation_reduced_ground.pcd

```

- to view sor  filtered results:

```
$ pcl_viewer plantation_reduced_object_inliers.pcd

```

### links for the point clouds:
- objects:

https://drive.google.com/file/d/1aCcmWHt0ZdbMTXa790hB2-IXUCv8NaHp/view?usp=sharing


- ground:

https://drive.google.com/file/d/1etdyKMNZJxmjUzQic-gIBR5VLEklP7Cd/view?usp=sharing

- cropped:
https://drive.google.com/file/d/1eTOGuugcfE6fCM8er9Yk_O72bxEgIfgp/view?usp=sharing


