# radialSurfProfile

This simple imageJ macro can be used to estimate the surface profile from 2D projected images. The principle is based on an image analysis 
technique introduced for the classification of breast tumours in medical imaging.[1,2]

The routine is semi-automated and requires the following steps: 

1. Pre-processing and segmentation of images to obtain thresholded binary images of an isolated particle.
2. Object selection.
3. Centroid localization to determine object centre.
4. Radial distance calculation using the centroid as the origin and polar coordinates of each perimeter pixel. 

The macro provides the centroid localization and calculation in steps 3 & 4. The pre-processing step in 1 is required before running the macro. Typical thresholding steps used particle sizing routines should be appropriate. Object selection can be easily achieved using the magic wand tool in imageJ to slect the outlining pixels.

This measurement provides a means to plot a radial distance from the objects centroid as a function of theta.

[1] J. Kilday, F. Palmieri and M. D. Fox, IEEE Trans. Med. Imaging, 1993, 12, 664-669. 
[2] S. Pohlman, K. A. Powell, N. A. Obuchowski, W. A. Chilcote and S. Grundfest-Broniatowski, Med. Phys., 1996, 23, 1337-1345.
