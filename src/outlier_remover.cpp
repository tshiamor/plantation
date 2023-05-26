
#include <iostream>
#include <pcl/ModelCoefficients.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>


#include <pcl/filters/extract_indices.h>
#include <pcl/filters/statistical_outlier_removal.h>

int main(int argc, char* argv[]){

    pcl::PointCloud<pcl::PointXYZINormal>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZINormal>);
    pcl::PointCloud<pcl::PointXYZINormal>::Ptr final_filtered (new pcl::PointCloud<pcl::PointXYZINormal>);

    if (pcl::io::loadPCDFile<pcl::PointXYZINormal> ("plantation_reduced_objects.pcd", *cloud) == -1){
	    PCL_ERROR ("Couldn't read file plantation_reduced_objects.pcd \n");
	    return (-1);
	}

    pcl::StatisticalOutlierRemoval<pcl::PointXYZINormal> sor;
    sor.setInputCloud (cloud);
    sor.setMeanK (50);
    sor.setStddevMulThresh (1.0);
    sor.filter (*final_filtered);

    std::cerr << "Cloud after filtering: " << std::endl;
    pcl::PCDWriter writer;
    writer.write<pcl::PointXYZINormal> ("plantation_reduced_object_inliers.pcd", *final_filtered, false);

    sor.setNegative (true);
    sor.filter (*final_filtered);
    writer.write<pcl::PointXYZINormal> ("plantation_reduced_object_outliers.pcd", *final_filtered, false);

    return 0;
}