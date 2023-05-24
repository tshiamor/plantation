#include <iostream>
#include <pcl/ModelCoefficients.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>

#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>


#include <pcl/filters/extract_indices.h>
#include <pcl/segmentation/progressive_morphological_filter.h>


int main(int argc, char* argv[]){

    pcl::PointCloud<pcl::PointXYZINormal>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZINormal>);
    pcl::PointCloud<pcl::PointXYZINormal>::Ptr cloud_out(new pcl::PointCloud<pcl::PointXYZINormal>);
    pcl::PointIndicesPtr ground (new pcl::PointIndices);

    if (pcl::io::loadPCDFile<pcl::PointXYZINormal> ("plantation_reduced.pcd", *cloud) == -1){
	    PCL_ERROR ("Couldn't read file plantation.pcd \n");
	    return (-1);
	}

    //filtering stage
    pcl::ProgressiveMorphologicalFilter<pcl::PointXYZINormal> pmf;
    pmf.setInputCloud (cloud);
    pmf.setMaxWindowSize (3);
    pmf.setSlope (0.05f);
    pmf.setInitialDistance (0.25f);
    pmf.setMaxDistance (0.125f);
    pmf.extract (ground->indices);

    // Create the filtering object
    pcl::ExtractIndices<pcl::PointXYZINormal> extract;
    extract.setInputCloud (cloud);
    extract.setIndices (ground);
    extract.filter (*cloud_out);

    std::cerr << "Ground cloud after filtering: " << std::endl;
    std::cerr << *cloud_out << std::endl;

    pcl::PCDWriter writer;
    writer.write<pcl::PointXYZINormal> ("plantation_reduced_ground.pcd", *cloud_out, false);

    // Extract non-ground returns
    extract.setNegative (true);
    extract.filter (*cloud_out);

    std::cerr << "Object cloud after filtering: " << std::endl;
    std::cerr << *cloud_out << std::endl;

    writer.write<pcl::PointXYZINormal> ("plantation_reduced_objects.pcd", *cloud_out, false);

    return 0;
}