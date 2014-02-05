jQuery(document).ready(function() {

	viewer = new Viewer('#layer_list', '.layer_settings');
	viewer.addView('#view_axial', Viewer.AXIAL);
	viewer.addView('#view_coronal', Viewer.CORONAL);
	viewer.addView('#view_sagittal', Viewer.SAGITTAL);

	viewer.addSlider("nav-xaxis", ".slider#nav-xaxis", "horizontal", 0, 1, 0.5, 0.01, Viewer.XAXIS);
	viewer.addSlider("nav-yaxis", ".slider#nav-yaxis", "vertical", 0, 1, 0.5, 0.01, Viewer.YAXIS);
	viewer.addSlider("nav-zaxis", ".slider#nav-zaxis", "vertical", 0, 1, 0.5, 0.01, Viewer.ZAXIS);

	viewer.addDataField('currentCoords', '#data_current_coords')
	viewer.clear()
	
	images = [
		{
			'url': 'data/MNI152.nii.gz',
			'name': 'MNI152 2mm',
			'colorPalette': 'grayscale',
			'cache': false,
			'intent': 'Intensity:'
		},
		
	]
	viewer.loadImages(images);

});