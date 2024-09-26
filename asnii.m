function asnii(filename)

    % Read the NIfTI file
    nifti_info = niftiinfo(filename);
    nifti_data = niftiread(nifti_info);

    % Call as on the data
    as(nifti_data, 'select', ':,:,1,:', 'colormap', 'qMRI');
    
end
