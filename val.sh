#!/usr/bin/env bash

# should run this script in Docker container
# validation of the result

# e.g. test on boats, cars, and airplanes
cd /yolt/scripts
python yolt2.py \
    --mode valid \
    --outname qgis_labels_all_boats_planes_cars_buffer \
    --object_labels_str airplane,airport,boat,boat_harbor,car \
    --cfg_file ave_standard.cfg \
    --valid_weight_dir train_cowc_cars_qgis_boats_planes_cfg=ave_26x26_2017_11_28_23-11-36 \
    --weight_file ave_standard_30000_tmp.weights \
    --valid_testims_dir qgis_validation/all \
    --keep_valid_slices False \
    --valid_make_pngs True \
    --valid_make_legend_and_title False \
    --edge_buffer_valid 1 \
    --valid_box_rescale_frac 1 \
    --plot_thresh_str 0.4 \
    --slice_sizes_str 416 \
    --slice_overlap 0.2 \
    --gpu 2