# set up
import os, sys
import arcpy
from arcpy import env
env.workspace = "U:/Python class/WebGIS Lab"
name = "weird names of places.csv"

# display x y data        
arcpy.MakeXYEventLayer_management("weird names of places.csv","Field3","Field2","points3.shp")
arcpy.CopyFeatures_management("weird names of places.shp","U:/Python Class/WebGIS Lab/placename.shp")

