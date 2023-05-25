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
THis first section is to allow for easier viewing of a sub-sction as the map is quite large. The method used for cropping is a cropBox filter feature provided by pcl.This takes two bounds (defined by  Eigen::Vector4f) which is a 4 by 1 matix which is used to determine the minimum and maximum of a cube/cuboid to be cropped from the original pointcloud.   


 <!--- ![image](https://github.com/tshiamor/plantation/assets/56265291/c5216657-8c62-4262-804f-1cdd967b5255 ) --->
<img src="https://github.com/tshiamor/plantation/assets/56265291/c5216657-8c62-4262-804f-1cdd967b5255" width="1000" height="800">


<!--- ![image](https://github.com/tshiamor/plantation/assets/56265291/11983cff-d15f-4314-80b4-7f27ebb206bf) --->
<img src="https://github.com/tshiamor/plantation/assets/56265291/11983cff-d15f-4314-80b4-7f27ebb206bf" width="1000" height="800">





### identify ground using a pmf filter, segment and separate into ground and objects 


### apply filtering using ransac to reduce noisy data on objects detected

non ground before filtering

![image](https://github.com/tshiamor/plantation/assets/56265291/415a3d60-2df3-4340-91f9-59c4555f4201)


view one of objects( non ground)
![image](https://github.com/tshiamor/plantation/assets/56265291/6b22b443-235f-4cd1-ae30-a48546d1da0b) 
view two of objects( non ground)
![image](https://github.com/tshiamor/plantation/assets/56265291/4fbeedbf-e132-4f1c-b54f-e01246e3bfcf)

view three of objects( non ground)
![image](https://github.com/tshiamor/plantation/assets/56265291/d4c8ccaf-b86d-42f1-b10e-283eca7a2498)







