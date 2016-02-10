import sys
sys.path.append('C:/Program Files (x86)/ArcGIS/Desktop10.3/bin')
sys.path.append('C:/Program Files (x86)/ArcGIS/Desktop10.3/arcpy')
sys.path.append('C:/Program Files (x86)/ArcGIS/Desktop10.3/ArcToolbox/Scripts')
import arcpy
import os
import types
from arcpy import env

# get parameters
inputlayer = arcpy.GetParameterAsText(0)
choosefield = arcpy.GetParameterAsText(1)
inputtable = arcpy.GetParameterAsText(2)
lowerbound = arcpy.GetParameterAsText(3)
upperbound = arcpy.GetParameterAsText(4)
value = arcpy.GetParameterAsText(5)
outputlayer = arcpy.GetParameterAsText(6)
# check if parameters are valid
print inputlayer 
print choosefield
print inputtable
print lowerbound
print value
print outputlayer

# add a new field in inputlayer
arcpy.AddField_management(inputlayer, "reclass", "Double")

# define lists to store new classify value
low = []
up = []
value = []

# store classify value
mycursor1 = arcpy.da.SearchCursor(inputtable, ["lowerbound", "upperbound", "value"])
for row in mycursor1:
    low.append(int(row[0])) 
    up.append(int(row[1]))
    value.append(int(row[2]))
    
low
up
value

# reclassify 
mycursor = arcpy.da.UpdateCursor(inputlayer, [choosefield,"reclass"])
for row in mycursor:
    if row[0] >= low[0] and row[0] < up[0]:
        row[1] = value[0]
    elif row[0] >= low[1] and row[0] < up[1]:
        row[1] = value [1]
    elif row[0] >= low[2] and row[0] < up[2]:
        row[1] = value[2]
    elif row[0] >= low[3] and row[0] < up[3]:
        row[1] = value[3]
    else:
        row[1] = 9999
    mycursor.updateRow(row)

# get output name    
outputname = os.path.basename(outputlayer)
outputname

# get output path
path = os.path.dirname(outputlayer)
path

# output a new layer with reclassification information
arcpy.FeatureClassToFeatureClass_conversion(inputlayer, path, outputname)