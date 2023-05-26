#include <pcl/point_types.h>
#include <pcl/io/pcd_io.h>
#include <pcl/filters/crop_box.h>
#include <pcl/filters/conditional_removal.h>

#include <pcl/filters/voxel_grid.h>

int main(int argc, char* argv[]){


	pcl::PointCloud<pcl::PointXYZINormal>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZINormal>);
	pcl::PointCloud<pcl::PointXYZINormal>::Ptr cloud_filtered (new pcl::PointCloud<pcl::PointXYZINormal>);
	pcl::PointCloud<pcl::PointXYZINormal>::Ptr voxel_filtered (new pcl::PointCloud<pcl::PointXYZINormal>);

	if (pcl::io::loadPCDFile<pcl::PointXYZINormal> ("plantation.pcd", *cloud) == -1){
	    PCL_ERROR ("Couldn't read file plantation.pcd \n");
	    return (-1);
	}
	 pcl::CropBox<pcl::PointXYZINormal> cropbox;
	 cropbox.setMin(Eigen::Vector4f(0, 0, 0, 1));
	 cropbox.setMax(Eigen::Vector4f(200, 200, 200, 1));
	 cropbox.setInputCloud(cloud);
	 cropbox.filter(*cloud_filtered);
	 std::cerr << "Cloud after filtering: " << std::endl;
	//save model to file
	pcl::io::savePCDFileASCII ("plantation_reduced.pcd", *cloud_filtered);
	/*
	pcl::VoxelGrid<pcl::PointXYZINormal> sor;
	sor.setInputCloud (cloud_filtered);
	sor.setLeafSize(0.01f,0.1f,0.01f);
	sor.filter(*voxel_filtered);
	pcl::io::savePCDFileASCII ("plantation_reduced.pcd", *voxel_filtered);
	*/

	return 0;

}

